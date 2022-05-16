// ignore_for_file: non_constant_identifier_names, slash_for_doc_comments

import 'dart:typed_data';

import 'package:hex/hex.dart';

class Manifest {
  final List<String> _instructions;

  Manifest(this._instructions);

  @override
  String toString() {
    return _instructions.join('\n');
  }
}

class ManifestBuilder {
  List<String> instructions = [];
  Map<String, num> buckets = {};
  Map<String, num> proofs = {};
  num id_allocator = 512;

  /**
     * Take all the given resource from worktop.
     * 
     * @param resourceAddress The resource address
     * @param bucketName The name of the new bucket
     * @returns 
     */
  ManifestBuilder takeFromWorktop(String resourceAddress, String bucketName) {
    instructions.add('TAKE_FROM_WORKTOP ResourceAddress("$resourceAddress") Bucket("$bucketName");');
    buckets[bucketName] = id_allocator++;
    return this;
  }

  /**
     * Take some amount of resource from worktop.
     * 
     * @param amount The amount
     * @param resourceAddress The resource address
     * @param bucketName The name of the new bucket
     * @returns 
     */
  ManifestBuilder takeFromWorktopByAmount(num amount, String resourceAddress, String bucketName) {
    instructions.add('TAKE_FROM_WORKTOP_BY_AMOUNT Decimal("$amount") ResourceAddress("$resourceAddress") Bucket("$bucketName");');
    buckets[bucketName] = id_allocator++;
    return this;
  }

  /**
     * Take some non-fungibles from worktop.
     * 
     * @param nonFungibleIds The non-fungible IDs
     * @param resourceAddress The resource address
     * @param bucketName The name of the new bucket
     * @returns 
     */
  ManifestBuilder takeFromWorktopByIds(List<String> nonFungibleIds, String resourceAddress, String bucketName) {
    instructions.add('TAKE_FROM_WORKTOP_BY_IDS ${formatNonFungibleIds(nonFungibleIds)} ResourceAddress("$resourceAddress") Bucket("$bucketName");');
    buckets[bucketName] = id_allocator++;
    return this;
  }

  /**
     * Returns a bucket to worktop.
     * 
     * @param bucketName The bucket name
     * @returns
     */
  ManifestBuilder returnToWorktop(String bucketName) {
    instructions.add('RETURN_TO_WORKTOP Bucket("$bucketName");');
    return this;
  }

  /**
     * Asserts worktop contains resource.
     * 
     * @param resourceAddress The resource address
     * @returns
     */
  ManifestBuilder assertWorktopContains(String resourceAddress) {
    instructions.add('ASSERT_WORKTOP_CONTAINS ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
     * Asserts worktop contains some amount of resource.
     * 
     * @param amount The amount
     * @param resourceAddress The resource address
     * @returns
     */
  ManifestBuilder assertWorktopContainsByAmount(num amount, String resourceAddress) {
    instructions.add('ASSERT_WORKTOP_CONTAINS_BY_AMOUNT Decimal("$amount") ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
     * Asserts worktop contains some non-fungibles.
     * 
     * @param nonFungibleIds The non-fungible IDs
     * @param resourceAddress The resource address
     * @returns
     */
  ManifestBuilder assertWorktopContainsByIds(List<String> nonFungibleIds, String resourceAddress) {
    instructions.add('ASSERT_WORKTOP_CONTAINS_BY_IDS ${formatNonFungibleIds(nonFungibleIds)} ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
     * Pops the most recent proof from the auth zone.
     * 
     * @param proofName The name of the new proof
     * @returns 
     */
  ManifestBuilder popFromAuthZone(String proofName) {
    instructions.add('POP_FROM_AUTH_ZONE Proof("$proofName");');
    proofs[proofName] = id_allocator++;
    return this;
  }

  /**
     * Pushes a proof onto the auth zone.
     * 
     * @param proofName The proof name
     * @returns 
     */
  ManifestBuilder pushToAuthZone(String proofName) {
    instructions.add('PUSH_TO_AUTH_ZONE Proof("$proofName");');
    return this;
  }

  /**
     * Clears the auth zone.
     * 
     * @returns 
     */
  ManifestBuilder clearAuthZone() {
    instructions.add('CLEAR_AUTH_ZONE;');
    return this;
  }

  /**
     * Creates a composite proof from the auth zone with all the given resource.
     * 
     * @param resourceAddress The resource address
     * @param proofName The name of the new proof
     * @returns 
     */
  ManifestBuilder createProofFromAuthZone(String resourceAddress, String proofName) {
    instructions.add('CREATE_PROOF_FROM_AUTH_ZONE ResourceAddress("$resourceAddress") Proof("$proofName");');
    proofs[proofName] = id_allocator++;
    return this;
  }

  /**
     * Creates a composite proof from the auth zone for the given amount.
     * 
     * @param amount The amount
     * @param resourceAddress The resource address
     * @param proofName The name of the new proof
     * @returns 
     */
  ManifestBuilder createProofFromAuthZoneByAmount(num amount, String resourceAddress, String proofName) {
    instructions.add('CREATE_PROOF_FROM_AUTH_ZONE_BY_AMOUNT Decimal("$amount") ResourceAddress("$resourceAddress") Proof("$proofName");');
    proofs[proofName] = id_allocator++;
    return this;
  }

  /**
      * Creates a composite proof from the auth zone for the give non-fungibles.
      * 
      * @param nonFungibleIds The non-fungible IDs
      * @param resourceAddress The resource address
      * @param proofName The name of the new proof
      * @returns 
      */
  ManifestBuilder createProofFromAuthZoneByIds(List<String> nonFungibleIds, String resourceAddress, String proofName) {
    instructions.add('CREATE_PROOF_FROM_AUTH_ZONE_BY_IDS ${formatNonFungibleIds(nonFungibleIds)} ResourceAddress("$resourceAddress") Proof("$proofName");');
    proofs[proofName] = id_allocator++;
    return this;
  }

  /**
     * Creates a composite proof from the auth zone for a given amount.
     * 
     * @param amount The amount
     * @param resourceAddress The resource address
     * @param proofName The name of the new proof
     * @returns 
     */
  ManifestBuilder createProofFromBucket(String bucketName, String proofName) {
    instructions.add('CREATE_PROOF_FROM_BUCKET Bucket("$bucketName") Proof("$proofName");');
    proofs[proofName] = id_allocator++;
    return this;
  }

  /**
     * Clones a proof.
     * 
     * @param proofName The proof name
     * @param clone The clone proof name
     * @returns 
     */
  ManifestBuilder cloneProof(String proofName, String cloneName) {
    instructions.add('CLONE_PROOF Proof("$proofName") Proof("$cloneName");');
    proofs[cloneName] = id_allocator++;
    return this;
  }

  /**
     * Drops a proof.
     * 
     * @param proofName The proof name
     * @returns 
     */
  ManifestBuilder dropProof(String proofName) {
    instructions.add('DROP_PROOF Proof("$proofName");');
    return this;
  }

  /**
     * Calls a function on a blueprint.
     * 
     * @param packageAddress  The package address
     * @param blueprintName  The blueprint name
     * @param functionName  The function name
     * @param args The arguments, which must be in manifest format, e.g. `1u8`, `"string"`, `Bucket("name")`
     */
  ManifestBuilder callFunction(String packageAddress, String blueprintName, String functionName, List<String> args) {
    instructions.add('CALL_FUNCTION PackageAddress("$packageAddress") "$blueprintName" "$functionName" ${args.join(" ")};');
    return this;
  }

  /**
     * Calls a method on a component.
     * 
     * @param componentAddress  The component address
     * @param methodName The method name
     * @param args The arguments, which must be in manifest format, e.g. `1u8`, `"string"`, `Bucket("name")`
     * @returns 
     */
  ManifestBuilder callMethod(String componentAddress, String methodName, List<String> args) {
    instructions.add('CALL_METHOD ComponentAddress("$componentAddress") "$methodName" ${args.join(" ")};');
    return this;
  }

  /**
     * Calls a method on a component with all resources on or off worktop.
     * 
     * @param componentAddress  The component address
     * @param methodName The method name
     * @returns 
     */
  ManifestBuilder callMethodWithAllResources(String componentAddress, String methodName) {
    instructions.add('CALL_METHOD_WITH_ALL_RESOURCES ComponentAddress("$componentAddress") "$methodName";');
    return this;
  }

  /**
     * Publishes a package.
     * @param code The package wasm code
     */
  ManifestBuilder publishPackage(Uint8List code) {
    var hex = HEX.encode(code);
    instructions.add('PUBLISH_PACKAGE Bytes("$hex");');
    return this;
  }

  /**
   * Withdraws all the given resource from account.
   * 
   * @param accountAddress The account component address
   * @param resourceAddress The resource address
   * @param bucketName The name of the new bucket
   * @returns 
   */
  ManifestBuilder withdrawFromAccount(String accountAddress, String resourceAddress) {
    instructions.add('CALL_METHOD ComponentAddress("$accountAddress") "withdraw" ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
     * Withdraws some amount of resource from account.
     * 
     * @param accountAddress The account component address
     * @param amount The amount
     * @param resourceAddress The resource address
     * @returns 
     */
  ManifestBuilder withdrawFromAccountByAmount(String accountAddress, num amount, String resourceAddress) {
    instructions.add('CALL_METHOD ComponentAddress("$accountAddress") "withdraw_by_amount" Decimal("$amount") ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
     * Withdraws some non-fungibles from account.
     * 
     * @param accountAddress The account component address
     * @param nonFungibleIds The non-fungible IDs
     * @param resourceAddress The resource address
     * @returns 
     */
  ManifestBuilder withdrawFromAccountByIds(String accountAddress, List<String> nonFungibleIds, String resourceAddress) {
    instructions.add('CALL_METHOD ComponentAddress("$accountAddress") "withdraw_by_ids" ${formatNonFungibleIds(nonFungibleIds)} ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
    * Creates proof of all the given resource from account.
    * 
    * @param accountAddress The account component address
    * @param resourceAddress The resource address
    * @param bucketName The name of the new bucket
    * @returns 
    */
  ManifestBuilder createProofFromAccount(String accountAddress, String resourceAddress) {
    instructions.add('CALL_METHOD ComponentAddress("$accountAddress") "create_proof" ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
     * Creates proof of some amount of resource from account.
     * 
     * @param accountAddress The account component address
     * @param amount The amount
     * @param resourceAddress The resource address
     * @returns 
     */
  ManifestBuilder createProofFromAccountByAmount(String accountAddress, num amount, String resourceAddress) {
    instructions.add('CALL_METHOD ComponentAddress("$accountAddress") "create_proof_by_amount" Decimal("$amount") ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
     * Creates proof of some non-fungibles from account.
     * 
     * @param accountAddress The account component address
     * @param nonFungibleIds The non-fungible IDs
     * @param resourceAddress The resource address
     * @returns 
     */
  ManifestBuilder createProofFromAccountByIds(String accountAddress, List<String> nonFungibleIds, String resourceAddress) {
    instructions.add('CALL_METHOD ComponentAddress("$accountAddress") "create_proof_by_ids" ${formatNonFungibleIds(nonFungibleIds)} ResourceAddress("$resourceAddress");');
    return this;
  }

  /**
     * Creates a new account.
     * @param publicKey The public key 
     * @returns 
     */
  ManifestBuilder newAccount(publicKey) {
    final auth = 'Enum("Protected", Enum("ProofRule", Enum("Require", Enum("StaticNonFungible", NonFungibleAddress("030000000000000000000000000000000000000000000000000005$publicKey")))))';

    return callMethod('020000000000000000000000000000000000000000000000000002', 'free_xrd', [])
        .takeFromWorktop('030000000000000000000000000000000000000000000000000004', 'xrd')
        .callFunction('010000000000000000000000000000000000000000000000000003', 'Account', 'new_with_resource', [auth, 'Bucket("xrd")']);
  }

  /**
     * Deposit all worktop resource into the componentAddress account.
     * @componentAddress The account component address
     * @returns 
     */
  ManifestBuilder depositBatch(String componentAddress) {
    callMethodWithAllResources(componentAddress, 'deposit_batch');
    return this;
  }

  /**
     * Builds a transaction manifest.
     * 
     * @returns a transaction manifest
     */
  Manifest build() {
    return Manifest(instructions);
  }

  formatNonFungibleIds(List<String> nonFungibleIds) {
    var ids = nonFungibleIds.map((id) => 'NonFungibleId("$id")').join(', ');
    return 'TreeSet<NonFungibleId>($ids)';
  }
}
