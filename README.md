# c-hello-from-rust-sgx

## Instruction

- Setup `baidu/rust-sgx-sdk` or use [this helper script](https://github.com/piotr-roslaniec/rust-sdk-helper)
- Run `./run.bash`

## Example output

```bash
# ./run.bash
make -C ./enclave/
make[1]: Entering directory '/root/embed-rust/hello-rust/enclave'
cargo build --release
    Finished release [optimized] target(s) in 0.02s
cp ./target/release/libhelloworldsampleenclave.a ../lib/libenclave.a
make[1]: Leaving directory '/root/embed-rust/hello-rust/enclave'
make -C /root/sgx/compiler-rt/ 2> /dev/null
make[1]: Entering directory '/root/sgx/compiler-rt'
make[1]: Nothing to be done for 'all'.
make[1]: Leaving directory '/root/sgx/compiler-rt'
cp /root/sgx/compiler-rt/libcompiler-rt-patch.a ./lib
LINK =>  enclave/enclave.so
<!-- Please refer to User's Guide for the explanation of each field -->
<EnclaveConfiguration>
    <ProdID>0</ProdID>
    <ISVSVN>0</ISVSVN>
    <StackMaxSize>0x40000</StackMaxSize>
    <HeapMaxSize>0x100000</HeapMaxSize>
    <TCSNum>1</TCSNum>
    <TCSPolicy>1</TCSPolicy>
    <DisableDebug>0</DisableDebug>
    <MiscSelect>0</MiscSelect>
    <MiscMask>0xFFFFFFFF</MiscMask>
</EnclaveConfiguration>
tcs_num 1, tcs_max_num 1, tcs_min_pool 1
The required memory is 1650688B.
Succeed.
SIGN =>  bin/enclave.signed.so
[+] Init Enclave Successful 2!
This is a normal world string passed into Enclave!
This is a in-Enclave Rust string!
[+] say_something success...
```
