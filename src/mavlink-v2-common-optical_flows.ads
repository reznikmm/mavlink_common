-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Optical flow from a flow sensor (e.g. optical mouse sensor)

pragma Ada_2022;

package MAVLink.V2.Common.Optical_Flows is

   pragma Pure;

   type Optical_Flow is record
      Time_Usec       : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving
      --  end can infer timestamp format (since 1.1.1970 or since system boot)
      --  by checking for the magnitude of the number.
      Sensor_Id       : Interfaces.Unsigned_8;
      --  Sensor ID
      Flow_X          : Interfaces.Integer_16;
      --  Units: [dpix]
      --  Flow in x-sensor direction
      Flow_Y          : Interfaces.Integer_16;
      --  Units: [dpix]
      --  Flow in y-sensor direction
      Flow_Comp_M_X   : Raw_Float;
      --  Units: [m/s]
      --  Flow in x-sensor direction, angular-speed compensated
      Flow_Comp_M_Y   : Raw_Float;
      --  Units: [m/s]
      --  Flow in y-sensor direction, angular-speed compensated
      Quality         : Interfaces.Unsigned_8;
      --  Optical flow quality / confidence. 0: bad, 255: maximum quality
      Ground_Distance : Raw_Float;
      --  Units: [m]
      --  Ground distance. Positive value: distance known. Negative value:
      --  Unknown distance
      Flow_Rate_X     : Raw_Float;
      --  Units: [rad/s]
      --  Flow rate about X axis
      Flow_Rate_Y     : Raw_Float;
      --  Units: [rad/s]
      --  Flow rate about Y axis
   end record;

   for Optical_Flow use record
      Time_Usec       at 0  range 0 .. 63;
      Flow_Comp_M_X   at 8  range 0 .. 31;
      Flow_Comp_M_Y   at 12 range 0 .. 31;
      Ground_Distance at 16 range 0 .. 31;
      Flow_X          at 20 range 0 .. 15;
      Flow_Y          at 22 range 0 .. 15;
      Sensor_Id       at 24 range 0 .. 7;
      Quality         at 25 range 0 .. 7;
      Flow_Rate_X     at 26 range 0 .. 31;
      Flow_Rate_Y     at 30 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Optical_Flow;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Optical_Flow;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Optical_Flow;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Optical_Flow;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Optical_Flow;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Optical_Flow;
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
     (Message : Optical_Flow;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Optical_Flow;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Optical_Flows;
