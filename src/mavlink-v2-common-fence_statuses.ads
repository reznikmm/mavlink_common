-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Status of geo-fencing. Sent in extended status stream when fencing
--  enabled.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Common.Fence_Statuses is

   pragma Pure;

   type Fence_Status is record
      Breach_Status     : Interfaces.Unsigned_8;
      --  Breach status (0 if currently inside fence, 1 if outside).
      Breach_Count      : Interfaces.Unsigned_16;
      --  Number of fence breaches.
      Breach_Type       : Fence_Breach;
      --  Last breach type.
      Breach_Time       : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time (since boot) of last breach.
      Breach_Mitigation : Fence_Mitigate;
      --  Active action to prevent fence breach
   end record;

   for Fence_Status use record
      Breach_Time       at 0 range 0 .. 31;
      Breach_Count      at 4 range 0 .. 15;
      Breach_Status     at 6 range 0 .. 7;
      Breach_Type       at 7 range 0 .. 7;
      Breach_Mitigation at 8 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Fence_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Fence_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Fence_Status;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Fence_Status;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Fence_Status;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Fence_Status;
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
     (Message : Fence_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Fence_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Fence_Statuses;
