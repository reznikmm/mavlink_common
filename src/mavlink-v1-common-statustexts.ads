-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status text message. These messages are printed in yellow in the COMM
--  console of QGroundControl. WARNING: They consume quite some bandwidth, so
--  use only for important status and error messages. If implemented wisely,
--  these messages are buffered on the MCU and sent only at a limited rate
--  (e.g. 10 Hz).

pragma Ada_2022;

with MAVLink.V1.Common.Types; use MAVLink.V1.Common.Types;

package MAVLink.V1.Common.Statustexts is

   pragma Pure;

   Statustext_Len : constant Interfaces.Unsigned_8 := 51;

   type Statustext is record
      Severity : Mav_Severity;
      --  Severity of status. Relies on the definitions within RFC-5424.
      Text     : String (1 .. 50);
      --  Status text message, without null termination character. UTF-8
      --  encoded.
   end record;

   for Statustext use record
      Severity at 0 range 0 .. 7;
      Text     at 1 range 0 .. 399;
   end record;

   procedure Encode
     (Message : Statustext;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Statustext;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Statustext;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Statustext;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Statustext;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Statustext;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Statustexts;
