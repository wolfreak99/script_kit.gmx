//asset_get_type_string(object)
switch asset_get_type(argument0)
{
    case asset_background: return "background";
    case asset_font: return "font";
    case asset_object: return "object";
    case asset_path: return "path";
    case asset_room: return "room";
    case asset_script: return "script";
    case asset_sound: return "sound";
    case asset_sprite: return "sprite";
    case asset_timeline: return "timeline";
    case asset_unknown: return "unknown";
    default: return "NULL";
}
