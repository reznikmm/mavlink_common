-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Version and capability of autopilot software. This should be emitted in
--  response to a request with MAV_CMD_REQUEST_MESSAGE.

pragma Ada_2022;

with MAVLink.V2.Standard.Types; use MAVLink.V2.Standard.Types;

package MAVLink.V2.Standard.Autopilot_Versions is

   pragma Pure;

   type Autopilot_Version is record
      Capabilities              : Mav_Protocol_Capability;
      --  Bitmap of capabilities
      Flight_Sw_Version         : Interfaces.Unsigned_32;
      --  Firmware version number. The field must be encoded as 4 bytes, where
      --  each byte (shown from MSB to LSB) is part of a semantic version:
      --  (major) (minor) (patch) (FIRMWARE_VERSION_TYPE).
      Middleware_Sw_Version     : Interfaces.Unsigned_32;
      --  Middleware version number
      Os_Sw_Version             : Interfaces.Unsigned_32;
      --  Operating system version number
      Board_Version             : Interfaces.Unsigned_32;
      --  HW / board version (last 8 bits should be silicon ID, if any). The
      --  first 16 bits of this field specify a board type from an enumeration
      --  stored at
      --  https://github.com/PX4/PX4-Bootloader/blob/master/board_types.txt
      --  and with extensive additions at
      --  https://github.com/ArduPilot/ardupilot/blob/master/Tools/AP_Bootloader/board_types.txt
      Flight_Custom_Version     : Unsigned_8_Array (1 .. 8);
      --  Custom version field, commonly the first 8 bytes of the git hash.
      --  This is not an unique identifier, but should allow to identify the
      --  commit using the main version number even for very large code bases.
      Middleware_Custom_Version : Unsigned_8_Array (1 .. 8);
      --  Custom version field, commonly the first 8 bytes of the git hash.
      --  This is not an unique identifier, but should allow to identify the
      --  commit using the main version number even for very large code bases.
      Os_Custom_Version         : Unsigned_8_Array (1 .. 8);
      --  Custom version field, commonly the first 8 bytes of the git hash.
      --  This is not an unique identifier, but should allow to identify the
      --  commit using the main version number even for very large code bases.
      Vendor_Id                 : Interfaces.Unsigned_16;
      --  ID of the board vendor
      Product_Id                : Interfaces.Unsigned_16;
      --  ID of the product
      Uid                       : Interfaces.Unsigned_64;
      --  UID if provided by hardware (see uid2)
      Uid2                      : Unsigned_8_Array (1 .. 18);
      --  UID if provided by hardware (supersedes the uid field. If this is
      --  non-zero, use this field, otherwise use uid)
   end record;

   for Autopilot_Version use record
      Capabilities              at 0  range 0 .. 63;
      Uid                       at 8  range 0 .. 63;
      Flight_Sw_Version         at 16 range 0 .. 31;
      Middleware_Sw_Version     at 20 range 0 .. 31;
      Os_Sw_Version             at 24 range 0 .. 31;
      Board_Version             at 28 range 0 .. 31;
      Vendor_Id                 at 32 range 0 .. 15;
      Product_Id                at 34 range 0 .. 15;
      Flight_Custom_Version     at 36 range 0 .. 63;
      Middleware_Custom_Version at 44 range 0 .. 63;
      Os_Custom_Version         at 52 range 0 .. 63;
      Uid2                      at 60 range 0 .. 143;
   end record;

   procedure Encode
     (Message : Autopilot_Version;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Autopilot_Version;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Autopilot_Version;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Autopilot_Version;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Autopilot_Version;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Autopilot_Version;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Autopilot_Version;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Autopilot_Version;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Standard.Autopilot_Versions;
