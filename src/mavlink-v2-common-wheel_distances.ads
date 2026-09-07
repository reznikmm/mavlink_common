-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Cumulative distance traveled for each reported wheel.

pragma Ada_2022;

package MAVLink.V2.Common.Wheel_Distances is

   pragma Pure;

   type Wheel_Distance is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (synced to UNIX time or since system boot).
      Count     : Interfaces.Unsigned_8;
      --  Number of wheels reported.
      Distance  : Long_Float_Array (1 .. 16);
      --  Units: [m]
      --  Distance reported by individual wheel encoders. Forward rotations
      --  increase values, reverse rotations decrease them. Not all wheels
      --  will necessarily have wheel encoders; the mapping of encoders to
      --  wheel positions must be agreed/understood by the endpoints.
   end record;

   for Wheel_Distance use record
      Time_Usec at 0   range 0 .. 63;
      Distance  at 8   range 0 .. 1023;
      Count     at 136 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Wheel_Distance;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Wheel_Distance;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Wheel_Distance;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Wheel_Distance;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Wheel_Distance;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Wheel_Distance;
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
     (Message : Wheel_Distance;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Wheel_Distance;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Wheel_Distances;
