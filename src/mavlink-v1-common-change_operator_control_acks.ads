-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Accept / deny control of this MAV

pragma Ada_2022;

package MAVLink.V1.Common.Change_Operator_Control_Acks is

   pragma Pure;

   Change_Operator_Control_Ack_Len : constant Interfaces.Unsigned_8 := 3;

   type Change_Operator_Control_Ack is record
      Gcs_System_Id   : Interfaces.Unsigned_8;
      --  ID of the GCS this message
      Control_Request : Interfaces.Unsigned_8;
      --  0: request control of this MAV, 1: Release control of this MAV
      Ack             : Interfaces.Unsigned_8;
      --  0: ACK, 1: NACK: Wrong passkey, 2: NACK: Unsupported passkey
      --  encryption method, 3: NACK: Already under control
   end record;

   for Change_Operator_Control_Ack use record
      Gcs_System_Id   at 0 range 0 .. 7;
      Control_Request at 1 range 0 .. 7;
      Ack             at 2 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Change_Operator_Control_Ack;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Change_Operator_Control_Ack;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Change_Operator_Control_Ack;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Change_Operator_Control_Ack;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Change_Operator_Control_Ack;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Change_Operator_Control_Ack;
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

end MAVLink.V1.Common.Change_Operator_Control_Acks;
