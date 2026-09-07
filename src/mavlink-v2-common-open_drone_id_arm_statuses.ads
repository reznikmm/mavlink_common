-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Transmitter (remote ID system) is enabled and ready to start sending
--  location and other required information. This is streamed by transmitter.
--  A flight controller uses it as a condition to arm.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Open_Drone_Id_Arm_Statuses is

   pragma Pure;

   type Open_Drone_Id_Arm_Status is record
      Status : Mav_Odid_Arm_Status;
      --  Status level indicating if arming is allowed.
      Error  : String (1 .. 50);
      --  Text error message, should be empty if status is good to arm. Fill
      --  with nulls in unused portion.
   end record;

   for Open_Drone_Id_Arm_Status use record
      Status at 0 range 0 .. 7;
      Error  at 1 range 0 .. 399;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_Arm_Status;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Open_Drone_Id_Arm_Status;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Open_Drone_Id_Arm_Status;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Open_Drone_Id_Arm_Status;
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
     (Message : Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Open_Drone_Id_Arm_Statuses;
