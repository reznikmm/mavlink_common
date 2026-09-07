-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  High level message to control a gimbal's attitude. This message is to be
--  sent to the gimbal manager (e.g. from a ground station). Angles and rates
--  can be set to NaN according to use case.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Gimbal_Manager_Set_Attitudes is

   pragma Pure;

   type Gimbal_Manager_Set_Attitude is record
      Target_System      : Interfaces.Unsigned_8;
      --  System ID
      Target_Component   : Interfaces.Unsigned_8;
      --  Component ID
      Flags              : Gimbal_Manager_Flags;
      --  High level gimbal manager flags to use.
      Gimbal_Device_Id   : Interfaces.Unsigned_8;
      --  Component ID of gimbal device to address (or 1-6 for non-MAVLink
      --  gimbal), 0 for all gimbal device components. Send command multiple
      --  times for more than one gimbal (but not all gimbals).
      Q                  : Short_Float_Array (1 .. 4);
      --  Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation, the
      --  frame is depends on whether the flag GIMBAL_MANAGER_FLAGS_YAW_LOCK
      --  is set)
      Angular_Velocity_X : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  X component of angular velocity, positive is rolling to the right,
      --  NaN to be ignored.
      Angular_Velocity_Y : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Y component of angular velocity, positive is pitching up, NaN to be
      --  ignored.
      Angular_Velocity_Z : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Z component of angular velocity, positive is yawing to the right,
      --  NaN to be ignored.
   end record;

   for Gimbal_Manager_Set_Attitude use record
      Flags              at 0  range 0 .. 31;
      Q                  at 4  range 0 .. 127;
      Angular_Velocity_X at 20 range 0 .. 31;
      Angular_Velocity_Y at 24 range 0 .. 31;
      Angular_Velocity_Z at 28 range 0 .. 31;
      Target_System      at 32 range 0 .. 7;
      Target_Component   at 33 range 0 .. 7;
      Gimbal_Device_Id   at 34 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Manager_Set_Attitude;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Manager_Set_Attitude;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Manager_Set_Attitude;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gimbal_Manager_Set_Attitude;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Gimbal_Manager_Set_Attitude;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gimbal_Manager_Set_Attitude;
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
     (Message : Gimbal_Manager_Set_Attitude;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gimbal_Manager_Set_Attitude;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Gimbal_Manager_Set_Attitudes;
