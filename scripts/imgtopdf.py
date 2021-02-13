from PIL import Image
limg = list(input("Enter the file names (keep a space after every file)").split())
im1 = limg[0]
pdf1_fn = input("Enter the name of the PDF file")
im1.save(pdf1_fn,"PDF",save_all=True,append_images = limg[1:])
