# AutoALL

AutoALL es un script automatizado desarrollado por **linoreki** que permite instalar y configurar fácilmente varios servicios en un servidor **Ubuntu Server**. Ofrece una interfaz interactiva para seleccionar qué servicios instalar.

## Servicios Disponibles

AutoALL permite instalar los siguientes servicios:

- **SAMBA** → Compartición de archivos en red.
- **DNS** → Servidor de nombres de dominio.
- **DHCP** → Asignación automática de direcciones IP.
- **WordPress** → Plataforma para creación de sitios web.
- **Moodle** → Sistema de gestión de aprendizaje.
- **Minecraft** → Servidor de Minecraft.

También ofrece la opción de instalar todos los servicios (excepto Minecraft) de una sola vez.

## Requisitos

- **Ubuntu Server**
- **Acceso root** (Ejecutar con `sudo`)

## Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/linoreki/AutoALL.git
   ```
2. Entra en la carpeta del proyecto:
   ```bash
   cd AutoALL
   ```
3. Asegúrate de que el script principal tiene permisos de ejecución:
   ```bash
   chmod +x AutoALL.sh
   ```

## Uso

Ejecuta el script con permisos de administrador:
```bash
sudo ./AutoALL.sh
```

Aparecerá un menú con las siguientes opciones:

1. Instalar **SAMBA**
2. Instalar **DNS**
3. Instalar **DHCP**
4. Instalar **WordPress**
5. Instalar **Moodle**
6. Instalar **Minecraft**
7. Instalar **todo** (excepto Minecraft)

Selecciona el número correspondiente a la opción deseada y sigue las instrucciones en pantalla.

## Notas
- Los scripts de instalación se encuentran en la carpeta `scripts`.
- Minecraft no se incluye en la instalación masiva para evitar consumo excesivo de recursos.

## Contribución
Si deseas contribuir, abre un **issue** o un **pull request** en el repositorio.

## Licencia
Este proyecto está bajo la licencia **MIT**.

