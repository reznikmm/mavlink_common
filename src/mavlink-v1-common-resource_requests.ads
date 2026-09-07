-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The autopilot is requesting a resource (file, binary, other type of data)

pragma Ada_2022;

package MAVLink.V1.Common.Resource_Requests is

   pragma Pure;

   Resource_Request_Len : constant Interfaces.Unsigned_8 := 243;

   type Resource_Request is record
      Request_Id    : Interfaces.Unsigned_8;
      --  Request ID. This ID should be reused when sending back URI contents
      Uri_Type      : Interfaces.Unsigned_8;
      --  The type of requested URI. 0 = a file via URL. 1 = a UAVCAN binary
      Uri           : Unsigned_8_Array (1 .. 120);
      --  The requested unique resource identifier (URI). It is not
      --  necessarily a straight domain name (depends on the URI type enum)
      Transfer_Type : Interfaces.Unsigned_8;
      --  The way the autopilot wants to receive the URI. 0 = MAVLink FTP. 1 =
      --  binary stream.
      Storage       : Unsigned_8_Array (1 .. 120);
      --  The storage path the autopilot wants the URI to be stored in. Will
      --  only be valid if the transfer_type has a storage associated (e.g.
      --  MAVLink FTP).
   end record;

   for Resource_Request use record
      Request_Id    at 0   range 0 .. 7;
      Uri_Type      at 1   range 0 .. 7;
      Uri           at 2   range 0 .. 959;
      Transfer_Type at 122 range 0 .. 7;
      Storage       at 123 range 0 .. 959;
   end record;

   procedure Encode
     (Message : Resource_Request;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Resource_Request;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Resource_Request;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Resource_Request;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Resource_Request;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Resource_Request;
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

end MAVLink.V1.Common.Resource_Requests;
