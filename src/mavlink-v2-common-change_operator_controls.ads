-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request to control this MAV

pragma Ada_2022;

package MAVLink.V2.Common.Change_Operator_Controls is

   pragma Pure;

   type Change_Operator_Control is record
      Target_System   : Interfaces.Unsigned_8;
      --  System the GCS requests control for
      Control_Request : Interfaces.Unsigned_8;
      --  0: request control of this MAV, 1: Release control of this MAV
      Version         : Interfaces.Unsigned_8;
      --  0: key as plaintext, 1-255: future, different hashing/encryption
      --  variants. The GCS should in general use the safest mode possible
      --  initially and then gradually move down the encryption level if it
      --  gets a NACK message indicating an encryption mismatch.
      Passkey         : String (1 .. 25);
      --  Password / Key, depending on version plaintext or encrypted. 25 or
      --  less characters, NULL terminated. The characters may involve A-Z,
      --  a-z, 0-9, and "!?,.-"
   end record;

   for Change_Operator_Control use record
      Target_System   at 0 range 0 .. 7;
      Control_Request at 1 range 0 .. 7;
      Version         at 2 range 0 .. 7;
      Passkey         at 3 range 0 .. 199;
   end record;

   procedure Encode
     (Message : Change_Operator_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Change_Operator_Control;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Change_Operator_Control;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Change_Operator_Control;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Change_Operator_Control;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Change_Operator_Control;
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
     (Message : Change_Operator_Control;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Change_Operator_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Change_Operator_Controls;
