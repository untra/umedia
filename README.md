# Umedia

**TODO: Add description**

## Brain
The brain handles the things ML interfaces should pickup on

### Emotions
(happy, sad, sick, asleep)
> `mix phx.gen.schema Brain.Emotion emotions emoji_identifier:string name:string description:string ml_interface_fk:string`

### Things
(hamburger, shoe, money, fire)
> `mix phx.gen.schema Brain.Thing things emoji_identifier:string name:string description:string ml_interface_fk:string`

### Real_Places
(Paris, Israel, Denver, The Moon)
> `mix phx.gen.schema Brain.Real_Place real_places name:string description:string ml_interface_fk:string`

### Real_People
(James Woods, Barack Obama, Adam West, Lady GaGa)
> `mix phx.gen.schema Brain.Real_Person real_people name:string description:string ml_interface_fk:string`

### Locations
(Kwik-E-Mart, 742 Evergreen Terace living room )
> `mix phx.gen.schema Brain.Location locations name:string description:string real_place_id:references:real_places ml_interface_fk:string`

### Characters
(Homer Simpson, Stan Smith)
> `mix phx.gen.schema Brain.Character characters name:string description:string real_person_id:references:real_people ml_interface_fk:string`

## Media
Our database of media content and contextual information (eg. when it was aired)

### Franchise
A franchise can include different sets of shows, movies, other franchises, eg:
("Daria", "Is It Fall Yet?", "Is It College Yet?")
> `mix phx.gen.schema Media.Franchise franchises franchise_name:string`

### Show (10 - 90 minute feature)
(Family Guy, The Simpsons)
> `mix phx.gen.schema Media.Show shows show_name:string franchise_id:references:franchises`
> `show_episodes:array:references:episodes`

### Episode
(Marge vs the Monorail, Blue Harvest)
> `mix phx.gen.schema Media.Episode episodes episode_title:string episode_number:integer episode_season:integer episode_path_to_raw:string original_airdate:datetime show_id:references:shows`
> `episode_scenes:array:references:scenes episode_clips:array:references:clips
episode_credits:array:references:credits
episode_characters:array:characters`
* episode title (string)
* episode number (number)
* season number (number)
* path_to_raw (string)
* date_aired (datetime)
* credits (has_many credits)
* scenes (has_many scenes)

### Scenes
> `mix phx.gen.schema Media.Scene scenes episode_id:references:episodes show_id:references:shows scene_tags:array:string scene_number:integer`
> `scene_characters:array:references:characters scene_locations:array:references:locations`
(created nuances)

### Clips
> `mix phx.gen.schema Media.Clip clips scene_id:references:scenes episode_id:references:episodes show_id:references:shows clip_tags:array:string clip_number:integer`
> `clip_characters:array:references:characters clip_location_id:references:location`
(created nuances)

### Credit
> `mix phx.gen.schema Media.Credit credits person_id:references:real_people episode_id:references:episode effort:string`
* person (fk real_person)
* a job (string)
* for a episode (fk episode)

```
mix phx.gen.html Media Franchise franchises franchise_name:string --no-model
mix phx.gen.html Media Show shows show_name:string franchise_id:references:franchises --no-model
```
