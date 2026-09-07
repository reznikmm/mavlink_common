-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  File transfer protocol message: https://mavlink.io/en/services/ftp.html.

pragma Ada_2022;

package MAVLink.V1.Common.File_Transfer_Protocols is

   pragma Pure;

   File_Transfer_Protocol_Len : constant Interfaces.Unsigned_8 := 254;

   type File_Transfer_Protocol is record
      Target_Network   : Interfaces.Unsigned_8;
      --  Network ID (0 for broadcast)
      Target_System    : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast)
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast)
      Payload          : Unsigned_8_Array (1 .. 251);
      --  Variable length payload. The content/format of this block is defined
      --  in https://mavlink.io/en/services/ftp.html. The length is defined by
      --  the remaining message length when subtracting the header and other
      --  fields. See also MAV_FTP_OPCODE and MAV_FTP_ERR.
   end record;

   for File_Transfer_Protocol use record
      Target_Network   at 0 range 0 .. 7;
      Target_System    at 1 range 0 .. 7;
      Target_Component at 2 range 0 .. 7;
      Payload          at 3 range 0 .. 2007;
   end record;

   procedure Encode
     (Message : File_Transfer_Protocol;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : File_Transfer_Protocol;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out File_Transfer_Protocol;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out File_Transfer_Protocol;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out File_Transfer_Protocol;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out File_Transfer_Protocol;
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

end MAVLink.V1.Common.File_Transfer_Protocols;
