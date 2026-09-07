-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Speed estimate from a vision source.

pragma Ada_2022;

package MAVLink.V2.Common.Vision_Speed_Estimates is

   pragma Pure;

   type Vision_Speed_Estimate is record
      Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX time or time since system boot)
      X             : Raw_Float;
      --  Units: [m/s]
      --  Global X speed
      Y             : Raw_Float;
      --  Units: [m/s]
      --  Global Y speed
      Z             : Raw_Float;
      --  Units: [m/s]
      --  Global Z speed
      Covariance    : Short_Float_Array (1 .. 9) :=
        [others => To_Raw (0.0)];
      --  Row-major representation of 3x3 linear velocity covariance matrix
      --  (states: vx, vy, vz; 1st three entries - 1st row, etc.). If unknown,
      --  assign NaN value to first element in the array.
      Reset_Counter : Interfaces.Unsigned_8;
      --  Estimate reset counter. This should be incremented when the estimate
      --  resets in any of the dimensions (position, velocity, attitude,
      --  angular speed). This is designed to be used when e.g an external
      --  SLAM system detects a loop-closure and the estimate jumps.
   end record;

   for Vision_Speed_Estimate use record
      Usec          at 0  range 0 .. 63;
      X             at 8  range 0 .. 31;
      Y             at 12 range 0 .. 31;
      Z             at 16 range 0 .. 31;
      Covariance    at 20 range 0 .. 287;
      Reset_Counter at 56 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Vision_Speed_Estimate;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Vision_Speed_Estimate;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Vision_Speed_Estimate;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Vision_Speed_Estimate;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Vision_Speed_Estimate;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Vision_Speed_Estimate;
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
     (Message : Vision_Speed_Estimate;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Vision_Speed_Estimate;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Vision_Speed_Estimates;
