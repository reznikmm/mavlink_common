-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Vehicle status report that is sent out while figure eight execution is in
--  progress (see MAV_CMD_DO_FIGURE_EIGHT). This may typically send at low
--  rates: of the order of 2Hz.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Figure_Eight_Execution_Statuses is

   pragma Pure;

   type Figure_Eight_Execution_Status is record
      Time_Usec    : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving
      --  end can infer timestamp format (since 1.1.1970 or since system boot)
      --  by checking for the magnitude of the number.
      Major_Radius : Raw_Float;
      --  Units: [m]
      --  Major axis radius of the figure eight. Positive: orbit the north
      --  circle clockwise. Negative: orbit the north circle
      --  counter-clockwise.
      Minor_Radius : Raw_Float;
      --  Units: [m]
      --  Minor axis radius of the figure eight. Defines the radius of two
      --  circles that make up the figure.
      Orientation  : Raw_Float;
      --  Units: [rad]
      --  Orientation of the figure eight major axis with respect to true
      --  north in [-pi,pi).
      Frame        : Mav_Frame;
      --  The coordinate system of the fields: x, y, z.
      X            : Interfaces.Integer_32;
      --  X coordinate of center point. Coordinate system depends on frame
      --  field.
      Y            : Interfaces.Integer_32;
      --  Y coordinate of center point. Coordinate system depends on frame
      --  field.
      Z            : Raw_Float;
      --  Units: [m]
      --  Altitude of center point. Coordinate system depends on frame field.
   end record;

   for Figure_Eight_Execution_Status use record
      Time_Usec    at 0  range 0 .. 63;
      Major_Radius at 8  range 0 .. 31;
      Minor_Radius at 12 range 0 .. 31;
      Orientation  at 16 range 0 .. 31;
      X            at 20 range 0 .. 31;
      Y            at 24 range 0 .. 31;
      Z            at 28 range 0 .. 31;
      Frame        at 32 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Figure_Eight_Execution_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Figure_Eight_Execution_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Figure_Eight_Execution_Status;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Figure_Eight_Execution_Status;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Figure_Eight_Execution_Status;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Figure_Eight_Execution_Status;
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
     (Message : Figure_Eight_Execution_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Figure_Eight_Execution_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Figure_Eight_Execution_Statuses;
