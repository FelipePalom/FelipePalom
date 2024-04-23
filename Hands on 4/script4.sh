#!/bin/bash

# Función para listar el contenido de un archivo o carpeta
listar_contenido() {
    read -p "Introduce la ruta absoluta del archivo o carpeta: " ruta
    ls -l "$ruta"
}

# Función para crear un archivo de texto con una línea de texto
crear_archivo() {
    read -p "Introduce el texto a almacenar en el archivo: " texto
    read -p "Introduce la ruta absoluta para el nuevo archivo: " ruta
    echo "$texto" > "$ruta"
    echo "Archivo creado correctamente."
}

# Función para comparar dos archivos de texto
comparar_archivos() {
    read -p "Introduce la ruta del primer archivo: " archivo1
    read -p "Introduce la ruta del segundo archivo: " archivo2
    diff "$archivo1" "$archivo2"
}

# Función para mostrar el uso de awk
uso_awk() {
    echo "Ejemplo de uso de awk:"
    echo "Buscar la tercera columna en un archivo separado por espacios:"
    awk '{print $3}' archivo.txt
}

# Función para mostrar el uso de grep
uso_grep() {
    echo "Ejemplo de uso de grep:"
    echo "Buscar las líneas que contienen 'palabra' en un archivo:"
    grep "palabra" archivo.txt
}

# Menú principal
mostrar_menu() {
    echo "1. Listar el contenido de un archivo o carpeta"
    echo "2. Crear un archivo de texto con una línea de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar uso de awk"
    echo "5. Mostrar uso de grep"
    echo "6. Salir"

    read -p "Elige una opción: " opcion

    case $opcion in
        1) listar_contenido ;;
        2) crear_archivo ;;
        3) comparar_archivos ;;
        4) uso_awk ;;
        5) uso_grep ;;
        6) exit ;;
        *) echo "Opción no válida";;
    esac
}

# Ejecutar el menú
while true; do
    mostrar_menu
done

