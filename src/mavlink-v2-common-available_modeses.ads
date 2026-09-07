-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a flight mode. The message can be enumerated to get
--  information for all modes, or requested for a particular mode, using
--  MAV_CMD_REQUEST_MESSAGE. Specify 0 in param2 to request that the message
--  is emitted for all available modes or the specific index for just one
--  mode. The modes must be available/settable for the current vehicle/frame
--  type. Each mode should only be emitted once (even if it is both standard
--  and custom). Note that the current mode should be emitted in CURRENT_MODE,
--  and that if the mode list can change then AVAILABLE_MODES_MONITOR must be
--  emitted on first change and subsequently streamed. See
--  https://mavlink.io/en/services/standard_modes.html

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Available_Modeses is

   pragma Pure;

   type Available_Modes is record
      Number_Modes  : Interfaces.Unsigned_8;
      --  The total number of available modes for the current vehicle type.
      Mode_Index    : Interfaces.Unsigned_8;
      --  The current mode index within number_modes, indexed from 1. The
      --  index is not guaranteed to be persistent, and may change between
      --  reboots or if the set of modes change.
      Standard_Mode : Mav_Standard_Mode;
      --  Standard mode.
      Custom_Mode   : Interfaces.Unsigned_32;
      --  A bitfield for use for autopilot-specific flags
      Properties    : Mav_Mode_Property;
      --  Mode properties.
      Mode_Name     : String (1 .. 35);
      --  Name of custom mode, with null termination character. Should be
      --  omitted for standard modes.
      Seq           : Interfaces.Unsigned_8;
      --  Sequence number. The value iterates sequentially whenever the set of
      --  AVAILABLE_MODES changes and should match value of
      --  AVAILABLE_MODES_MONITOR. Note, a GCS must ignore 0 values, and
      --  should re-start the download if the value changes part-way through
      --  fetching modes.
   end record;

   for Available_Modes use record
      Custom_Mode   at 0  range 0 .. 31;
      Properties    at 4  range 0 .. 31;
      Number_Modes  at 8  range 0 .. 7;
      Mode_Index    at 9  range 0 .. 7;
      Standard_Mode at 10 range 0 .. 7;
      Mode_Name     at 11 range 0 .. 279;
      Seq           at 46 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Available_Modes;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Available_Modes;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Available_Modes;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Available_Modes;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Available_Modes;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Available_Modes;
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
     (Message : Available_Modes;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Available_Modes;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Available_Modeses;
