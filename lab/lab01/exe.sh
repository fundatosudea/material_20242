# Eliminar directorios existentes
rm -rf dist
rm -rf student_test/*

rm -rf student_test

# Ejecutar Otter assign
otter assign lab01_.ipynb dist > log

# Verificar si el comando anterior fue exitoso
if [ $? -eq 0 ]; then
    # Crear el directorio student_test
    mkdir student_test
    # Copiar archivos desde dist/student a student_test
    cp -r dist/student/* student_test/
else
    echo "Otter assign failed. Please check the logs for errors."
    mkdir student_test
    # Copiar archivos desde dist/student a student_test
    cp -r dist/student/* student_test/
fi
