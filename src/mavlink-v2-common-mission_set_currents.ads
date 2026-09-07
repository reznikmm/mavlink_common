-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set the mission item with sequence number seq as the current item and emit
--  MISSION_CURRENT (whether or not the mission number changed). If a mission
--  is currently being executed, the system will continue to this new mission
--  item on the shortest path, skipping any intermediate mission items. Note
--  that mission jump repeat counters are not reset (see MAV_CMD_DO_JUMP
--  param2). This message may trigger a mission state-machine change on some
--  systems: for example from MISSION_STATE_NOT_STARTED or
--  MISSION_STATE_PAUSED to MISSION_STATE_ACTIVE. If the system is in mission
--  mode, on those systems this command might therefore start, restart or
--  resume the mission. If the system is not in mission mode this message must
--  not trigger a switch to mission mode.

pragma Ada_2022;

package MAVLink.V2.Common.Mission_Set_Currents is

   pragma Pure;

   type Mission_Set_Current is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID
      Seq              : Interfaces.Unsigned_16;
      --  Sequence
   end record;

   for Mission_Set_Current use record
      Seq              at 0 range 0 .. 15;
      Target_System    at 2 range 0 .. 7;
      Target_Component at 3 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mission_Set_Current;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Set_Current;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Set_Current;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mission_Set_Current;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Mission_Set_Current;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mission_Set_Current;
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
     (Message : Mission_Set_Current;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mission_Set_Current;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Mission_Set_Currents;
