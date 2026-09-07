-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set the vehicle attitude and body angular rates.

pragma Ada_2022;

package MAVLink.V2.Common.Actuator_Control_Targets is

   pragma Pure;

   type Actuator_Control_Target is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving
      --  end can infer timestamp format (since 1.1.1970 or since system boot)
      --  by checking for the magnitude of the number.
      Group_Mlx : Interfaces.Unsigned_8;
      --  Actuator group. The "_mlx" indicates this is a multi-instance
      --  message and a MAVLink parser should use this field to difference
      --  between instances.
      Controls  : Short_Float_Array (1 .. 8);
      --  Actuator controls. Normed to -1..+1 where 0 is neutral position.
      --  Throttle for single rotation direction motors is 0..1, negative
      --  range for reverse direction. Standard mapping for attitude controls
      --  (group 0): (index 0-7): roll, pitch, yaw, throttle, flaps, spoilers,
      --  airbrakes, landing gear. Load a pass-through mixer to repurpose them
      --  as generic outputs.
   end record;

   for Actuator_Control_Target use record
      Time_Usec at 0  range 0 .. 63;
      Controls  at 8  range 0 .. 255;
      Group_Mlx at 40 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Actuator_Control_Target;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Actuator_Control_Target;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Actuator_Control_Target;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Actuator_Control_Target;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Actuator_Control_Target;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Actuator_Control_Target;
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
     (Message : Actuator_Control_Target;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Actuator_Control_Target;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Actuator_Control_Targets;
