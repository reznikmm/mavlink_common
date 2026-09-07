-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The filtered local position (e.g. fused computer vision and
--  accelerometers). Coordinate frame is right-handed, Z-axis down
--  (aeronautical frame, NED / north-east-down convention)

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Local_Position_Ned_Covs is

   pragma Pure;

   type Local_Position_Ned_Cov is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving
      --  end can infer timestamp format (since 1.1.1970 or since system boot)
      --  by checking for the magnitude of the number.
      Estimator_Type : Mav_Estimator_Type;
      --  Class id of the estimator this estimate originated from.
      X              : Raw_Float;
      --  Units: [m]
      --  X Position
      Y              : Raw_Float;
      --  Units: [m]
      --  Y Position
      Z              : Raw_Float;
      --  Units: [m]
      --  Z Position
      Vx             : Raw_Float;
      --  Units: [m/s]
      --  X Speed
      Vy             : Raw_Float;
      --  Units: [m/s]
      --  Y Speed
      Vz             : Raw_Float;
      --  Units: [m/s]
      --  Z Speed
      Ax             : Raw_Float;
      --  Units: [m/s/s]
      --  X Acceleration
      Ay             : Raw_Float;
      --  Units: [m/s/s]
      --  Y Acceleration
      Az             : Raw_Float;
      --  Units: [m/s/s]
      --  Z Acceleration
      Covariance     : Short_Float_Array (1 .. 45) :=
        [others => To_Raw (0.0)];
      --  Row-major representation of position, velocity and acceleration 9x9
      --  cross-covariance matrix upper right triangle (states: x, y, z, vx,
      --  vy, vz, ax, ay, az; first nine entries are the first ROW, next eight
      --  entries are the second row, etc.). If unknown, assign NaN value to
      --  first element in the array.
   end record;

   for Local_Position_Ned_Cov use record
      Time_Usec      at 0   range 0 .. 63;
      X              at 8   range 0 .. 31;
      Y              at 12  range 0 .. 31;
      Z              at 16  range 0 .. 31;
      Vx             at 20  range 0 .. 31;
      Vy             at 24  range 0 .. 31;
      Vz             at 28  range 0 .. 31;
      Ax             at 32  range 0 .. 31;
      Ay             at 36  range 0 .. 31;
      Az             at 40  range 0 .. 31;
      Covariance     at 44  range 0 .. 1439;
      Estimator_Type at 224 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Local_Position_Ned_Cov;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Local_Position_Ned_Cov;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Local_Position_Ned_Cov;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Local_Position_Ned_Cov;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Local_Position_Ned_Cov;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Local_Position_Ned_Cov;
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
     (Message : Local_Position_Ned_Cov;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Local_Position_Ned_Cov;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Local_Position_Ned_Covs;
