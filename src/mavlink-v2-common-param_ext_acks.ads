-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Response from a PARAM_EXT_SET message.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Param_Ext_Acks is

   pragma Pure;

   type Param_Ext_Ack is record
      Param_Id     : String (1 .. 16);
      --  Parameter id, terminated by NULL if the length is less than 16
      --  human-readable chars and WITHOUT null termination (NULL) byte if the
      --  length is exactly 16 chars - applications have to provide 16+1 bytes
      --  storage if the ID is stored as string
      Param_Value  : String (1 .. 128);
      --  Parameter value (new value if PARAM_ACK_ACCEPTED, current value
      --  otherwise)
      Param_Type   : Mav_Param_Ext_Type;
      --  Parameter type.
      Param_Result : Param_Ack;
      --  Result code.
   end record;

   for Param_Ext_Ack use record
      Param_Id     at 0   range 0 .. 127;
      Param_Value  at 16  range 0 .. 1023;
      Param_Type   at 144 range 0 .. 7;
      Param_Result at 145 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Param_Ext_Ack;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Param_Ext_Ack;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Param_Ext_Ack;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Param_Ext_Ack;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Param_Ext_Ack;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Param_Ext_Ack;
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
     (Message : Param_Ext_Ack;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Param_Ext_Ack;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Param_Ext_Acks;
