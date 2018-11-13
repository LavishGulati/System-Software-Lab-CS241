mkdir multiple_pdf
numPages=$(pdfinfo Linux.Shell.Scripting.Cookbook.pdf | grep Pages | awk '{print $2}')
for ((i = 1; i < $numPages; i += 2)); do
    pdftk Linux.Shell.Scripting.Cookbook.pdf cat $i $((i+1)) output ./multiple_pdf/$(((i+1)/2)).pdf
done

mkdir ~/Success
mv ./multiple_pdf/*.pdf ~/Success/
rm -r multiple_pdf
