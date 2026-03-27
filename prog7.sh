echo "----File Permission & ownership ----"
echo "Enter file name"
read file
if [ ! -f "$file" ]; then
echo "File not found"
exit
fi
echo "Enter permission (eg., 755):"
read perm
chmod $perm $file
echo "Enter new owner name:"
read owner
chown $owner $file
echo "Updated file details:"
ls -l $file
