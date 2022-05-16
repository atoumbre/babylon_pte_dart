# babylon_pte_api.api.DefaultApi

## Load the API package
```dart
import 'package:babylon_pte_api/api.dart';
```

All URIs are relative to *https://pte01.radixdlt.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComponent**](DefaultApi.md#getcomponent) | **GET** /component/{address} | Get info about a component
[**getEpoch**](DefaultApi.md#getepoch) | **GET** /epoch | Get the current epoch
[**getNonFungible**](DefaultApi.md#getnonfungible) | **GET** /non-fungible/{address} | Get info about a specific non-fungible unit
[**getNonce**](DefaultApi.md#getnonce) | **GET** /nonce | Get the nonce of a signer set
[**getReceipt**](DefaultApi.md#getreceipt) | **GET** /receipt/{hash} | Retrieve a receipt
[**getResource**](DefaultApi.md#getresource) | **GET** /resource/{address} | Get info about a resource
[**getTransaction**](DefaultApi.md#gettransaction) | **GET** /transaction/{hash} | Retrieve a transaction
[**listComponents**](DefaultApi.md#listcomponents) | **GET** /components | List all components
[**listPackages**](DefaultApi.md#listpackages) | **GET** /packages | List all packages
[**listResources**](DefaultApi.md#listresources) | **GET** /resources | List all resources
[**submitTransaction**](DefaultApi.md#submittransaction) | **POST** /transaction | Execute a signed transaction


# **getComponent**
> Component getComponent(address)

Get info about a component

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();
final String address = address_example; // String | The component address

try {
    final response = api.getComponent(address);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->getComponent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The component address | 

### Return type

[**Component**](Component.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEpoch**
> Epoch getEpoch()

Get the current epoch

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();

try {
    final response = api.getEpoch();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->getEpoch: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Epoch**](Epoch.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNonFungible**
> NonFungible getNonFungible(address)

Get info about a specific non-fungible unit

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();
final String address = address_example; // String | The non-fungible address

try {
    final response = api.getNonFungible(address);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->getNonFungible: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The non-fungible address | 

### Return type

[**NonFungible**](NonFungible.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNonce**
> Nonce getNonce(signers)

Get the nonce of a signer set

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();
final BuiltList<String> signers = ; // BuiltList<String> | The signer public keys

try {
    final response = api.getNonce(signers);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->getNonce: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signers** | [**BuiltList&lt;String&gt;**](String.md)| The signer public keys | 

### Return type

[**Nonce**](Nonce.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReceipt**
> Receipt getReceipt(hash)

Retrieve a receipt

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();
final String hash = hash_example; // String | The transaction hash

try {
    final response = api.getReceipt(hash);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->getReceipt: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| The transaction hash | 

### Return type

[**Receipt**](Receipt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResource**
> Resource getResource(address)

Get info about a resource

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();
final String address = address_example; // String | The resource address

try {
    final response = api.getResource(address);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->getResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **String**| The resource address | 

### Return type

[**Resource**](Resource.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransaction**
> Transaction getTransaction(hash)

Retrieve a transaction

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();
final String hash = hash_example; // String | The transaction hash

try {
    final response = api.getTransaction(hash);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->getTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hash** | **String**| The transaction hash | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listComponents**
> BuiltList<String> listComponents()

List all components

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();

try {
    final response = api.listComponents();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->listComponents: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BuiltList&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPackages**
> BuiltList<String> listPackages()

List all packages

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();

try {
    final response = api.listPackages();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->listPackages: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BuiltList&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listResources**
> BuiltList<String> listResources()

List all resources

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();

try {
    final response = api.listResources();
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->listResources: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BuiltList&lt;String&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitTransaction**
> Receipt submitTransaction(transaction)

Execute a signed transaction

### Example
```dart
import 'package:babylon_pte_api/api.dart';

final api = BabylonPteApi().getDefaultApi();
final Transaction transaction = ; // Transaction | The transaction payload in hex.

try {
    final response = api.submitTransaction(transaction);
    print(response);
} catch on DioError (e) {
    print('Exception when calling DefaultApi->submitTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transaction** | [**Transaction**](Transaction.md)| The transaction payload in hex. | 

### Return type

[**Receipt**](Receipt.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

