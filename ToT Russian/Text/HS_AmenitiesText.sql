-----------------------------------------------
-- Amenities Text Change
-----------------------------------------------

-- Translated to Russian by Tipok.  key language are first      достаточно спорный момент как переводить остановился на этом

UPDATE LocalizedText SET Text ='{1_Num} =  довольство от услуг города[NEWLINE]'		WHERE Language ='ru_RU' AND Tag ='LOC_HUD_CITY_AMENITIES_ENTERTAINMENT';
UPDATE LocalizedText SET Text ='Довольство от услуг города:'		WHERE Language ='ru_RU' AND Tag ='LOC_HUD_CITY_AMENITIES_FROM_ENTERTAINMENT';
UPDATE LocalizedText SET Text ='{1_Amount: number +#,###;-#,###} [ICON_Amenities] {1_Amount : plural 1?довольство; other?довольства;} от услуг города'		WHERE Language ='ru_RU' AND Tag ='LOC_TYPE_TRAIT_AMENITY_ENTERTAINMENT';
