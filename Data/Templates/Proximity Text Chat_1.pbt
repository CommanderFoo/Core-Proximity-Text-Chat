Assets {
  Id: 4775818397186768403
  Name: "Proximity Text Chat"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 44148183792151461
      Objects {
        Id: 44148183792151461
        Name: "TemplateBundleDummy"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Folder {
          BundleDummy {
            ReferencedAssets {
              Id: 14301649514450425478
            }
          }
        }
      }
    }
    Assets {
      Id: 14301649514450425478
      Name: "Proximity Text Chat"
      PlatformAssetType: 5
      TemplateAsset {
        ObjectBlock {
          RootId: 7322301195122594769
          Objects {
            Id: 7322301195122594769
            Name: "Proximity Text Chat"
            Transform {
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 4781671109827199097
            ChildIds: 8093720631664656306
            ChildIds: 17574248393714077204
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            NetworkContext {
              Type: Server
            }
          }
          Objects {
            Id: 8093720631664656306
            Name: "Proximity_Text_Chat_Server"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 7322301195122594769
            UnregisteredParameters {
              Overrides {
                Name: "cs:distance"
                Float: 15
              }
              Overrides {
                Name: "cs:distance:tooltip"
                String: "The distance in metres at which players will see the message in chat."
              }
            }
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 10351008780273049536
              }
            }
          }
          Objects {
            Id: 17574248393714077204
            Name: "READ_ME"
            Transform {
              Location {
              }
              Rotation {
              }
              Scale {
                X: 1
                Y: 1
                Z: 1
              }
            }
            ParentId: 7322301195122594769
            Collidable_v2 {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            Visible_v2 {
              Value: "mc:evisibilitysetting:inheritfromparent"
            }
            CameraCollidable {
              Value: "mc:ecollisionsetting:inheritfromparent"
            }
            EditorIndicatorVisibility {
              Value: "mc:eindicatorvisibility:visiblewhenselected"
            }
            Script {
              ScriptAsset {
                Id: 6111936644914280380
              }
            }
          }
        }
        PrimaryAssetId {
          AssetType: "None"
          AssetId: "None"
        }
      }
    }
    Assets {
      Id: 6111936644914280380
      Name: "READ_ME"
      PlatformAssetType: 3
      TextAsset {
        Text: "--[[\r\nChecks the distance between the speaker and other players to determine who is in range. If anyone is in range of the speaker then they will see the message.\r\n\r\nThere is a distance value on the script that can be set. Default is 15 metres for testing.\r\n\r\nThe downside of this, is that the text color is changed because the script needs to rebroadcast to those players in range.\r\n--]]"
      }
    }
    Assets {
      Id: 10351008780273049536
      Name: "Proximity_Text_Chat_Server"
      PlatformAssetType: 3
      TextAsset {
        Text: "local distance = script:GetCustomProperty(\"distance\")\r\n\r\nChat.receiveMessageHook:Connect(function(speaker, opts)\r\n\tlocal the_message = opts.message\r\n\tlocal speaker_pos = speaker:GetWorldPosition()\r\n\r\n\topts.message = \"\"\r\n\r\n\tlocal in_range = {}\r\n\r\n\tfor i, p in ipairs(Game.GetPlayers()) do\r\n\t\tlocal dist = (speaker_pos - p:GetWorldPosition()).size / 100\r\n\r\n\t\tif(dist <= distance) then\r\n\t\t\tin_range[#in_range + 1] = p\r\n\t\tend\r\n\tend\r\n\r\n\tChat.BroadcastMessage(\"[All] \" .. speaker.name .. \": \" .. the_message, { players = in_range })\r\nend)"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Id: "c1d55340c66241cdbedab7117cdc9aa4"
    OwnerAccountId: "93d6eaf2514940a08c5481a4c03c1ee3"
    OwnerName: "CommanderFoo"
  }
  SerializationVersion: 98
}
IncludesAllDependencies: true
