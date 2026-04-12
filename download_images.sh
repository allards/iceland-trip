#!/bin/bash
# Run this script from the root of your iceland-trip GitHub repo
# It creates an images/ folder and downloads permanent Wikimedia Commons photos

mkdir -p images
cd images

echo "Downloading images from Wikimedia Commons..."

# Keflavík Airport
curl -sL -o keflavik.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Keflav%C3%ADk_International_Airport_2.jpg/800px-Keflav%C3%ADk_International_Airport_2.jpg"

# Stykkishólmur
curl -sL -o stykkisholmur1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Stykkish%C3%B3lmur_02.jpg/800px-Stykkish%C3%B3lmur_02.jpg"
curl -sL -o stykkisholmur2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Stykkish%C3%B3lmur_harbor%2C_Sn%C3%A6fellsnes_peninsula_%2821450463588%29.jpg/800px-Stykkish%C3%B3lmur_harbor%2C_Sn%C3%A6fellsnes_peninsula_%2821450463588%29.jpg"

# Snæfellsjökull
curl -sL -o snaefellsjokull1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Sn%C3%A6fellsj%C3%B6kull_from_%C3%96ndver%C3%B0arnes.jpg/800px-Sn%C3%A6fellsj%C3%B6kull_from_%C3%96ndver%C3%B0arnes.jpg"
curl -sL -o snaefellsjokull2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Sn%C3%A6fellsj%C3%B6kull%2C_2014-06-18.jpg/800px-Sn%C3%A6fellsj%C3%B6kull%2C_2014-06-18.jpg"

# Grundarfoss
curl -sL -o grundarfoss1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Grundarfoss%2C_Grundarfj%C3%B6r%C3%B0ur_%282%29.jpg/800px-Grundarfoss%2C_Grundarfj%C3%B6r%C3%B0ur_%282%29.jpg"

# Kirkjufell
curl -sL -o kirkjufell1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Kirkjufell_in_fall.jpg/800px-Kirkjufell_in_fall.jpg"
curl -sL -o kirkjufell2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Kirkjufellsfoss_and_Kirkjufell_in_winter_2018.jpg/800px-Kirkjufellsfoss_and_Kirkjufell_in_winter_2018.jpg"

# Ísafjörður
curl -sL -o isafjordur1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/%C3%8Dsafj%C3%B6r%C3%B0ur_-_panoramio_%282%29.jpg/800px-%C3%8Dsafj%C3%B6r%C3%B0ur_-_panoramio_%282%29.jpg"
curl -sL -o isafjordur2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Skutulsfjordur_Isafjordur.jpg/800px-Skutulsfjordur_Isafjordur.jpg"

# Dynjandi
curl -sL -o dynjandi1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Dynjandi%2C_Westfjords%2C_Iceland.jpg/800px-Dynjandi%2C_Westfjords%2C_Iceland.jpg"
curl -sL -o dynjandi2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Dynjandi_waterfall_Iceland.jpg/800px-Dynjandi_waterfall_Iceland.jpg"

# Hornstrandir
curl -sL -o hornstrandir1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Hornstrandir_coastline.jpg/800px-Hornstrandir_coastline.jpg"
curl -sL -o hornstrandir2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Hornstrandir_-_Hornv%C3%ADk.jpg/800px-Hornstrandir_-_Hornv%C3%ADk.jpg"

# Látrabjarg
curl -sL -o latrabjarg1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/L%C3%A1trabjarg_puffin_%281%29.jpg/800px-L%C3%A1trabjarg_puffin_%281%29.jpg"
curl -sL -o latrabjarg2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/L%C3%A1trabjarg%2C_Westfjords%2C_Iceland.jpg/800px-L%C3%A1trabjarg%2C_Westfjords%2C_Iceland.jpg"

# Rauðasandur
curl -sL -o raudasandur1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Rau%C3%B0asandur_%2815%29.jpg/800px-Rau%C3%B0asandur_%2815%29.jpg"
curl -sL -o raudasandur2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Rau%C3%B0isandur%2C_Vestfir%C3%B0ir%2C_Islandia%2C_2014-06-25%2C_DD_070.jpg/800px-Rau%C3%B0isandur%2C_Vestfir%C3%B0ir%2C_Islandia%2C_2014-06-25%2C_DD_070.jpg"

# Blönduós
curl -sL -o blonduos1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Bl%C3%B6ndu%C3%B3skirkja.jpg/800px-Bl%C3%B6ndu%C3%B3skirkja.jpg"

# Icelandic Horses
curl -sL -o horses1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Icelandic_Horses_%284039519765%29.jpg/800px-Icelandic_Horses_%284039519765%29.jpg"

# Glaumbaer
curl -sL -o glaumbaer1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Glaumb%C3%A6r_28.jpg/800px-Glaumb%C3%A6r_28.jpg"
curl -sL -o glaumbaer2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Glaumb%C3%A6r_05.jpg/800px-Glaumb%C3%A6r_05.jpg"

# Hveravellir
curl -sL -o hveravellir1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Hveravellir_hot_spring.jpg/800px-Hveravellir_hot_spring.jpg"
curl -sL -o hveravellir2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Hveravellir.jpg/800px-Hveravellir.jpg"

# Kerlingarfjöll
curl -sL -o kerlingarfjoll1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Kerlingarfj%C3%B6ll%2C_Iceland_%2821%29.jpg/800px-Kerlingarfj%C3%B6ll%2C_Iceland_%2821%29.jpg"
curl -sL -o kerlingarfjoll2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Kerlingarfj%C3%B6ll%2C_Iceland_%2813%29.jpg/800px-Kerlingarfj%C3%B6ll%2C_Iceland_%2813%29.jpg"

# Landmannalaugar
curl -sL -o landmannalaugar1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Landmannalaugar%2C_Iceland.jpg/800px-Landmannalaugar%2C_Iceland.jpg"
curl -sL -o landmannalaugar2.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Landmannalaugar_7.jpg/800px-Landmannalaugar_7.jpg"

# Kerið Crater
curl -sL -o kerid1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Keri%C3%B0%2C_Su%C3%B0urland%2C_Islandia%2C_2014-08-16%2C_DD_105.JPG/800px-Keri%C3%B0%2C_Su%C3%B0urland%2C_Islandia%2C_2014-08-16%2C_DD_105.JPG"

# Flúðir (use Secret Lagoon image)
curl -sL -o fludir1.jpg "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Secret_Lagoon%2C_Fl%C3%BA%C3%B0ir%2C_Su%C3%B0urland%2C_Islandia%2C_2014-08-16%2C_DD_114.JPG/800px-Secret_Lagoon%2C_Fl%C3%BA%C3%B0ir%2C_Su%C3%B0urland%2C_Islandia%2C_2014-08-16%2C_DD_114.JPG"

echo ""
echo "Done! Downloaded $(ls *.jpg 2>/dev/null | wc -l) images."
echo ""
echo "Now commit and push:"
echo "  git add images/ index.html"
echo "  git commit -m 'Add self-hosted images for map'"
echo "  git push"
