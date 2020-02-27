while IFS=" " read -r package; 
do 
  #Rscript -e "install.packages('"$package"')";
  Rscript -e "if (!require('"$package"')) install.packages('"$package"')";
done < "requirements.txt"
