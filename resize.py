#!/usr/bin/env python3
"""
Resize and convert all map images to proper JPGs.
Run from your iceland-trip folder:
    python3 resize_images.py
"""

from PIL import Image
import os
import glob

IMG_DIR = "images"
# Target width for popup photos (280px popup x 2 for retina = 560px, round up)
TARGET_WIDTH = 600
QUALITY = 85

def process_image(filepath):
    """Open any image format, resize to TARGET_WIDTH, save as .jpg"""
    try:
        img = Image.open(filepath)
        
        # Convert to RGB (handles PNG with transparency, WebP, etc.)
        if img.mode in ('RGBA', 'P', 'LA'):
            background = Image.new('RGB', img.size, (255, 255, 255))
            if img.mode == 'P':
                img = img.convert('RGBA')
            background.paste(img, mask=img.split()[-1] if 'A' in img.mode else None)
            img = background
        elif img.mode != 'RGB':
            img = img.convert('RGB')
        
        # Resize maintaining aspect ratio
        w, h = img.size
        new_w = TARGET_WIDTH
        new_h = int(h * (TARGET_WIDTH / w))
        img = img.resize((new_w, new_h), Image.LANCZOS)
        
        # Build output path — always .jpg
        name = os.path.splitext(os.path.basename(filepath))[0]
        out_path = os.path.join(IMG_DIR, f"{name}.jpg")
        
        # Save as JPEG
        img.save(out_path, 'JPEG', quality=QUALITY, optimize=True)
        
        # Remove original if it had a different extension
        if filepath != out_path and os.path.exists(filepath):
            os.remove(filepath)
        
        size_kb = os.path.getsize(out_path) / 1024
        print(f"  ✓ {name}.jpg  ({new_w}x{new_h}, {size_kb:.0f} KB)")
        return True
        
    except Exception as e:
        print(f"  ✗ {filepath}: {e}")
        return False

def main():
    if not os.path.isdir(IMG_DIR):
        print(f"Error: '{IMG_DIR}' folder not found. Run this from your iceland-trip folder.")
        return
    
    # Find all image files
    extensions = ('*.jpg', '*.jpeg', '*.png', '*.webp', '*.JPG', '*.JPEG', '*.PNG', '*.WEBP')
    files = []
    for ext in extensions:
        files.extend(glob.glob(os.path.join(IMG_DIR, ext)))
    
    files = sorted(set(files))
    
    if not files:
        print("No images found in images/ folder.")
        return
    
    print(f"Processing {len(files)} images → {TARGET_WIDTH}px wide JPGs:\n")
    
    ok = 0
    for f in files:
        if process_image(f):
            ok += 1
    
    print(f"\nDone! {ok}/{len(files)} images converted.")
    print(f"\nNow push to GitHub:")
    print(f"  git add images/")
    print(f"  git commit -m 'Resize and convert all images to JPG'")
    print(f"  git push")

if __name__ == '__main__':
    main()