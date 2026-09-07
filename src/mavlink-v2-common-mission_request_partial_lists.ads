-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request a partial list of mission items from the system/component.
--  https://mavlink.io/en/services/mission.html. If start and end index are
--  the same, just send one waypoint.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Mission_Request_Partial_Lists is

   pragma Pure;

   type Mission_Request_Partial_List is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID
      Start_Index      : Interfaces.Integer_16;
      --  Start index
      End_Index        : Interfaces.Integer_16;
      --  End index, -1 by default (-1: send list to end). Else a valid index
      --  of the list
      Mission_Type     : Mav_Mission_Type;
      --  Mission type.
   end record;

   for Mission_Request_Partial_List use record
      Start_Index      at 0 range 0 .. 15;
      End_Index        at 2 range 0 .. 15;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
      Mission_Type     at 6 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mission_Request_Partial_List;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Request_Partial_List;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Request_Partial_List;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mission_Request_Partial_List;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Mission_Request_Partial_List;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mission_Request_Partial_List;
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
     (Message : Mission_Request_Partial_List;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mission_Request_Partial_List;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Mission_Request_Partial_Lists;
