-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Component metadata message, which may be requested using
--  MAV_CMD_REQUEST_MESSAGE. This contains the MAVLink FTP URI and CRC for the
--  component's general metadata file. The file must be hosted on the
--  component, and may be xz compressed. The file CRC can be used for file
--  caching. The general metadata file can be read to get the locations of
--  other metadata files (COMP_METADATA_TYPE) and translations, which may be
--  hosted either on the vehicle or the internet. For more information see:
--  https://mavlink.io/en/services/component_information.html. Note: Camera
--  components should use CAMERA_INFORMATION instead, and autopilots may use
--  both this message and AUTOPILOT_VERSION.

pragma Ada_2022;

package MAVLink.V2.Common.Component_Metadatas is

   pragma Pure;

   type Component_Metadata is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      File_Crc     : Interfaces.Unsigned_32;
      --  CRC32 of the general metadata file.
      Uri          : String (1 .. 100);
      --  MAVLink FTP URI for the general metadata file
      --  (COMP_METADATA_TYPE_GENERAL), which may be compressed with xz. The
      --  file contains general component metadata, and may contain URI links
      --  for additional metadata (see COMP_METADATA_TYPE). The information is
      --  static from boot, and may be generated at compile time. The string
      --  needs to be zero terminated.
   end record;

   for Component_Metadata use record
      Time_Boot_Ms at 0 range 0 .. 31;
      File_Crc     at 4 range 0 .. 31;
      Uri          at 8 range 0 .. 799;
   end record;

   procedure Encode
     (Message : Component_Metadata;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Component_Metadata;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Component_Metadata;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Component_Metadata;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Component_Metadata;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Component_Metadata;
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
     (Message : Component_Metadata;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Component_Metadata;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Component_Metadatas;
