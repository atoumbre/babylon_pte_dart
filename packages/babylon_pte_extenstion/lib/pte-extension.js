
 var ActionType;
 (function (ActionType) {
     ActionType["GetAccountAddress"] = "getAccountAddress";
     ActionType["GetAccountAddressSuccess"] = "getAccountAddressSuccess";
     ActionType["GetAccountAddressFailure"] = "getAccountAddressFailure";
     ActionType["SignTransaction"] = "signTransaction";
     ActionType["SignTransactionSuccess"] = "signTransactionSuccess";
     ActionType["SignTransactionFailure"] = "signTransactionFailure";
 })(ActionType || (ActionType = {}));
 var MessageTarget;
 (function (MessageTarget) {
     MessageTarget[MessageTarget["Extension"] = 0] = "Extension";
     MessageTarget[MessageTarget["Dapp"] = 1] = "Dapp";
 })(MessageTarget || (MessageTarget = {}));

function sendAction({ type, payload }) {
    var event = new CustomEvent("radix#chromeExtension#send", {
        detail: { type, payload },
    });
    window.dispatchEvent(event);
};
Event
async function waitForAction  (successType, errorTypes) { 
    return new Promise((resolve, reject) => {
        window.addEventListener("radix#chromeExtension#receive", (event) => {
            var { action } = event.detail;
            if (action.type === successType)
                resolve(action);
            else if (errorTypes?.includes(action.type))
                reject(action);
        }, {
            once: true,
        });
    })
};

async function  signTransaction (manifest) {
    sendAction({
        type: ActionType.SignTransaction,
        payload: manifest,
    });
    var response = await waitForAction(ActionType.SignTransactionSuccess, [ActionType.SignTransactionFailure]);
    console.log("Response: " + response.payload);
    return response.payload;
};

async function getAccountAddress  () {
    sendAction({
        type: ActionType.GetAccountAddress,
        payload: "",
    });
    var response = await timeout(waitForAction(ActionType.GetAccountAddressSuccess, [ActionType.GetAccountAddressFailure]))
    console.log("Response: " + response.payload);
    return response.payload;
}

 function timeout (prom, time=5000, exception = new Error('Request timout')) {
	let timer;
	return Promise.race([
		prom,
		new Promise((_, rej) => timer = setTimeout(rej, time, exception))
	]).finally(() => clearTimeout(timer));
}