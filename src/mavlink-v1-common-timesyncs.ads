-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Time synchronization message. The message is used for both timesync
--  requests and responses. The request is sent with `ts1=syncing component
--  timestamp` and `tc1=0`, and may be broadcast or targeted to a specific
--  system/component. The response is sent with `ts1=syncing component
--  timestamp` (mirror back unchanged), and `tc1=responding component
--  timestamp`, with the `target_system` and `target_component` set to ids of
--  the original request. Systems can determine if they are receiving a
--  request or response based on the value of `tc`. If the response has
--  `target_system==target_component==0` the remote system has not been
--  updated to use the component IDs and cannot reliably timesync; the
--  requester may report an error. Timestamps are UNIX Epoch time or time
--  since system boot in nanoseconds (the timestamp format can be inferred by
--  checking for the magnitude of the number; generally it doesn't matter as
--  only the offset is used). The message sequence is repeated numerous times
--  with results being filtered/averaged to estimate the offset. See also:
--  https://mavlink.io/en/services/timesync.html.

pragma Ada_2022;

package MAVLink.V1.Common.Timesyncs is

   pragma Pure;

   Timesync_Len : constant Interfaces.Unsigned_8 := 16;

   type Timesync is record
      Tc1 : Interfaces.Integer_64;
      --  Units: [ns]
      --  Time sync timestamp 1. Syncing: 0. Responding: Timestamp of
      --  responding component.
      Ts1 : Interfaces.Integer_64;
      --  Units: [ns]
      --  Time sync timestamp 2. Timestamp of syncing component (mirrored in
      --  response).
   end record;

   for Timesync use record
      Tc1 at 0 range 0 .. 63;
      Ts1 at 8 range 0 .. 63;
   end record;

   procedure Encode
     (Message : Timesync;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Timesync;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Timesync;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Timesync;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Timesync;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Timesync;
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

end MAVLink.V1.Common.Timesyncs;
