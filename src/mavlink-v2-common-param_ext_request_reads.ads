-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request to read the value of a parameter with either the param_id string
--  id or param_index. PARAM_EXT_VALUE should be emitted in response.

pragma Ada_2022;

package MAVLink.V2.Common.Param_Ext_Request_Reads is

   pragma Pure;

   type Param_Ext_Request_Read is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID
      Param_Id         : String (1 .. 16);
      --  Parameter id, terminated by NULL if the length is less than 16
      --  human-readable chars and WITHOUT null termination (NULL) byte if the
      --  length is exactly 16 chars - applications have to provide 16+1 bytes
      --  storage if the ID is stored as string
      Param_Index      : Interfaces.Integer_16 :=
        -1;
      --  Parameter index. Set to -1 to use the Parameter ID field as
      --  identifier (else param_id will be ignored)
   end record;

   for Param_Ext_Request_Read use record
      Param_Index      at 0 range 0 .. 15;
      Target_System    at 2 range 0 .. 7;
      Target_Component at 3 range 0 .. 7;
      Param_Id         at 4 range 0 .. 127;
   end record;

   procedure Encode
     (Message : Param_Ext_Request_Read;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Param_Ext_Request_Read;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Param_Ext_Request_Read;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Param_Ext_Request_Read;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Param_Ext_Request_Read;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Param_Ext_Request_Read;
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
     (Message : Param_Ext_Request_Read;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Param_Ext_Request_Read;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Param_Ext_Request_Reads;
