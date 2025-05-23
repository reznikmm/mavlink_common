# mavlink_common

[![Build with Alire](https://github.com/reznikmm/mavlink_common/actions/workflows/alire.yml/badge.svg)](https://github.com/reznikmm/mavlink_common/actions/workflows/alire.yml)
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
  [Common Message Set](https://mavlink.io/en/messages/common.html)
- Compatible with the Ada bareboard profiles for real-time applications
- Modular structure for easy integration with existing Ada projects
- Supports message serialization and deserialization

## Installation

1. Add MAVLink as a dependency:

   ```shell
   alr with mavlink_common
   ```

2. Add `with`-clause for the Project

   This library offers two projects to suit different needs:

   - **Standard Version**: This version, configured with `mavlink_common.gpr`,
     provides the full set of MAVLink message types and capabilities.

     ```gpr
     with "mavlink_common.gpr";
     ```

   - **Limited Type Version**: To achieve a more compact compiled output, you
     can use the `mavlink_common_limited.gpr` project file. This configuration
     declares the Message type as a `limited` record, which can lead
     to reduced code size, making it particularly beneficial for
     resource-constrained embedded applications.

     ```gpr
     with "mavlink_common_limited.gpr";
     ```

   Choose the project file that best fits your requirements when building your
   application.

##  Usage

TBD. See [`examples`](examples/) for now.

## Mavlink commit id

The code was generated from `fdacb2b` commit of
the [mavlink](https://github.com/mavlink/mavlink) repo. I used this steps:

```shell
python -m venv venv
source venv/bin/activate
git clone --depth=1 https://github.com/reznikmm/pymavlink
git clone --depth=1 https://github.com/mavlink/mavlink
MDEF=$PWD/mavlink/message_definitions python -m pip install pymavlink

python3 -m pymavlink.tools.mavgen --lang=Ada --wire-protocol=1.0 \
  --output=generated mavlink/message_definitions/v1.0/common.xml
```

## Contributing

Contributions are welcome!
Please [open an issue](https://github.com/reznikmm/mavlink_common/issues)
to discuss potential improvements or submit a pull request.

## License

This project is licensed under the MIT License.
See the [LICENSE](LICENSE) file for more details.
