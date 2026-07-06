project_name="$1"
DIR="/home/g5ekster/Hello!"

if [ -d "$DIR" ]; then
   echo "Folder already exists!"
   exit 1
elif [ "$project_name" != "" ]; then
   mkdir "$project_name"
else
   echo "Error!"
echo ""
   echo "Usage:"
echo ""
   echo "./project_creator.sh <project_name>"
   exit 1
fi

mkdir "$project_name/src"
mkdir "$project_name/include"
mkdir "$project_name/build"
touch "$project_name/src/main.cpp"
touch "$project_name/README.md"
echo "#include <iostream>" > "$project_name/src/main.cpp"
echo " " >> "$project_name/src/main.cpp"
echo "int main()" >> "$project_name/src/main.cpp"
echo "{" >> "$project_name/src/main.cpp"
echo '   std::cout << "Hello, world!";' >> "$project_name/src/main.cpp"
echo "   return 0;" >> "$project_name/src/main.cpp"
echo "}" >> "$project_name/src/main.cpp"
echo "# $project_name" > "$project_name/README.md"
echo "" >> "$project_name/README.md"
echo "Created with $0" >> "$project_name/README.md"
