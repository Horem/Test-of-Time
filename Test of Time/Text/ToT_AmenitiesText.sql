-----------------------------------------------
-- Amenities Text Change
-----------------------------------------------

UPDATE LocalizedText SET Text ='{1_Num} = Amenities From City Services[NEWLINE]'		WHERE Tag ='LOC_HUD_CITY_AMENITIES_ENTERTAINMENT'		AND Language ='en_US';
UPDATE LocalizedText SET Text ='Amenities from City Services:'		WHERE Tag ='LOC_HUD_CITY_AMENITIES_FROM_ENTERTAINMENT'		AND Language ='en_US';
UPDATE LocalizedText SET Text ='{1_Amount: number +#,###;-#,###} [ICON_Amenities] {1_Amount : plural 1?Amenity; other?Amenities;} from City Services'		WHERE Tag ='LOC_TYPE_TRAIT_AMENITY_ENTERTAINMENT'		AND Language ='en_US';
