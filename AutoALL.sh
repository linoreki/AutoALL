AutoALL.sh
#!/bin/bash
#------------AutoALL------------#
if [[ $EUID -ne 0 ]]; then
    error_exit "Este script debe ejecutarse como root. Usa sudo."
fi

instalar_servicios

function instalar_servicios() {
    cd scripts
    echo -e "${GREEN}Instala los siguientes servicios...${NC}"
    echo "Opciones:"
    echo "  1. Instalar SAMBA"
    echo "  2. Instalar DNS"
    echo "  3. Instalar DHCP"
    echo "  4. Instalar Wordpress"
    echo "  5. Instalar Moodle"
    echo "  6. Instalar Minecraft"
    echo "  7. Instalar todo (menos Minecraft)"
    read -p "Selecciona una opción: " OPCION_USUARIO

    case $OPCION_USUARIO in
        1)
            echo -e "${GREEN}Instalando SAMBA...${NC}"
            chmod +x ./AutoSamba.sh
            /AutoSamba.sh
            ;;
        2)
            echo -e "${GREEN}Instalando DNS...${NC}"
            chmod +x ./AutoDNS.sh
            ./AutoDNS.sh
            ;;
        3)
            echo -e "${GREEN}Instalando DHCP...${NC}"
            chmod +x ./AutoDHCP.sh
            ./AutoDHCP.sh
            ;;
        4)
            echo -e "${GREEN}Instalando Wordpress...${NC}"
            chmod +x ./AutoWordpress.sh
            ./AutoWordpress.sh
            ;;
        5)
            echo -e "${GREEN}Instalando Moodle...${NC}"
            chmod +x ./AutoMoodle.sh
            ./AutoMoodle.sh
            ;;
        6)
            echo -e "${GREEN}Instalando Minecraft...${NC}"
            chmod +x ./AutoMinecraft.sh
            ./AutoMinecraft.sh

            ;;
        7)
            echo -e "${GREEN}Instalando todo(Menos minecraft)...${NC}"
            chmod +x ./AutoSamba.sh
            chmod +x ./AutoDNS.sh
            chmod +x ./AutoDHCP.sh
            chmod +x ./AutoWordpress.sh
            chmod +x ./AutoMoodle.sh
            ./AutoDNS.sh
            ./AutoDHCP.sh
            ./AutoSamba.sh
            ./AutoWordpress.sh
            ./AutoMoodle.sh
            ;;
        *)
            echo -e "${RED}Opción no válida.${NC}"
            ;;
    esac
}
