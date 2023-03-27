## Demo PAC for AURIX™ tc37x lite-kit

Demo implementation of a Peripheral Access Crate for the [TC375-Lite kit]. 
The **.svd** has been kindly provided by Infineon and is licensed under their condition (see [license](LICENSE))

For full documentation refer to the [veecle-aurix-demo] crate.

### Usage

Generate the patched PAC by running `build.sh`. Required steps:
- `cargo install svdtools`
- `cargo install svd2rust`

[veecle-aurix-demo]: https://github.com/veecle/tc37x-demo
[TC375-Lite kit]: https://www.infineon.com/cms/en/product/promopages/AURIX-microcontroller-boards/low-cost-arduino-kits/aurix-tc375-lite-kit/