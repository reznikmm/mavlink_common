-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Sent from simulation to autopilot. This packet is useful for high
--  throughput applications such as hardware in the loop simulations.

pragma Ada_2022;

package MAVLink.V2.Common.Hil_States is

   pragma Pure;

   type Hil_State is record
      Time_Usec  : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving
      --  end can infer timestamp format (since 1.1.1970 or since system boot)
      --  by checking for the magnitude of the number.
      Roll       : Raw_Float;
      --  Units: [rad]
      --  Roll angle
      Pitch      : Raw_Float;
      --  Units: [rad]
      --  Pitch angle
      Yaw        : Raw_Float;
      --  Units: [rad]
      --  Yaw angle
      Rollspeed  : Raw_Float;
      --  Units: [rad/s]
      --  Body frame roll / phi angular speed
      Pitchspeed : Raw_Float;
      --  Units: [rad/s]
      --  Body frame pitch / theta angular speed
      Yawspeed   : Raw_Float;
      --  Units: [rad/s]
      --  Body frame yaw / psi angular speed
      Lat        : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude
      Lon        : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude
      Alt        : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude
      Vx         : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground X Speed (Latitude)
      Vy         : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Y Speed (Longitude)
      Vz         : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Z Speed (Altitude)
      Xacc       : Interfaces.Integer_16;
      --  Units: [mG]
      --  X acceleration
      Yacc       : Interfaces.Integer_16;
      --  Units: [mG]
      --  Y acceleration
      Zacc       : Interfaces.Integer_16;
      --  Units: [mG]
      --  Z acceleration
   end record;

   for Hil_State use record
      Time_Usec  at 0  range 0 .. 63;
      Roll       at 8  range 0 .. 31;
      Pitch      at 12 range 0 .. 31;
      Yaw        at 16 range 0 .. 31;
      Rollspeed  at 20 range 0 .. 31;
      Pitchspeed at 24 range 0 .. 31;
      Yawspeed   at 28 range 0 .. 31;
      Lat        at 32 range 0 .. 31;
      Lon        at 36 range 0 .. 31;
      Alt        at 40 range 0 .. 31;
      Vx         at 44 range 0 .. 15;
      Vy         at 46 range 0 .. 15;
      Vz         at 48 range 0 .. 15;
      Xacc       at 50 range 0 .. 15;
      Yacc       at 52 range 0 .. 15;
      Zacc       at 54 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Hil_State;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_State;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_State;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Hil_State;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Hil_State;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Hil_State;
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
     (Message : Hil_State;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Hil_State;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Hil_States;
