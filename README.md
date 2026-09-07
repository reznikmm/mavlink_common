# mavlink_common

[![Build with Alire](https://github.com/reznikmm/mavlink_common/actions/workflows/alire.yml/badge.svg?branch=v1)](https://github.com/reznikmm/mavlink_common/actions/workflows/alire.yml)
[![Alire](https://img.shields.io/endpoint?url=https://alire.ada.dev/badges/mavlink_common.json)](https://alire.ada.dev/crates/mavlink_common.html)

> MAVLink -- Micro Air Vehicle Message Marshalling Library.

This repository provides an Ada library for MAVLink, a lightweight
messaging protocol for communicating with drones and other unmanned
vehicles. The library was generated using the MAVLink code generator,
customized for the Ada programming language. The package is compatible
with the Alire package manager, enabling easy integration into Ada
projects.

## Overview

The MAVLink Ada library allows for efficient and reliable message
marshalling and unmarshalling, making it suitable for embedded applications
and ground control software. With support for multiple message types,
the library offers a robust solution for developing applications that
require communication with MAVLink-compliant devices. Features

- Generated MAVLink 1.0 protocol support,
  [Common Message Set](https://mavlink.io/en/messages/common.html).
  See [`v2`](https://github.com/reznikmm/mavlink_common/tree/v2) branch
  for 2.0 wire protocol.
- Compatible with the Ada bareboard profiles for real-time applications
- Modular structure for easy integration with existing Ada projects
- Supports message serialization and deserialization

## Installation

Add MAVLink as a dependency:

   ```shell
   alr with mavlink_common
   ```

##  Usage

TBD. See [`examples`](examples/) for now.

## Mavlink commit id

The code was generated from `b1fb5a1` commit of
the [mavlink](https://github.com/mavlink/mavlink) repo.
And `a5812a8` from [pymavlink](https://github.com/ardupilot/pymavlink) repo.
I used this steps:

```shell
python -m venv venv
source venv/bin/activate
git clone --depth=1 https://github.com/ardupilot/pymavlink
git clone --depth=1 https://github.com/mavlink/mavlink
MDEF=$PWD/mavlink/message_definitions python -m pip install ./pymavlink

sed -i 's|<field type="uint16_t" name="cap_flags" enum="GIMBAL_DEVICE_CAP_FLAGS">|<field type="uint16_t" name="cap_flags">|' \
  mavlink/message_definitions/v1.0/common.xml

sed -i 's|<field type="uint32_t" name="cap_flags2" enum="GIMBAL_DEVICE_CAP_FLAGS" invalid="0">|<field type="uint32_t" name="cap_flags2" enum="GIMBAL_DEVICE_CAP_FLAGS">|' \
  mavlink/message_definitions/v1.0/common.xml

sed -i 's|<field type="char\[9\]" name="cell_tower_id" invalid="0">|<field type="char[9]" name="cell_tower_id" invalid="[0]">|' \
  mavlink/message_definitions/v1.0/common.xml

python3 -m pymavlink.tools.mavgen --lang=Ada --wire-protocol=1.0 \
  --output=generated mavlink/message_definitions/v1.0/common.xml

sed -i -e 's/  *$//' *.ad[sb] *.ad[sb]
```

## Contributing

Contributions are welcome!
Please [open an issue](https://github.com/reznikmm/mavlink_common/issues)
to discuss potential improvements or submit a pull request.

## License

This project is licensed under the MIT License.
See the [LICENSE](LICENSE) file for more details.
