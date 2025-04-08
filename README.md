# Home Assistant Media Services Bundle Add-on

This Home Assistant add-on provides a comprehensive media management solution with VPN support. It includes:

- **Radarr**: Movie collection manager
- **Sonarr**: TV series collection manager
- **Prowlarr**: Indexer manager/proxy
- **Bazarr**: Subtitle manager
- **Lidarr**: Music collection manager
- **Readarr**: Book collection manager
- **qBittorrent**: Torrent client
- **Jellyfin**: Media server
- **Gluetun**: VPN client container

All services (except Jellyfin) run through the VPN for enhanced privacy.

## Installation

1. Add this repository to your Home Assistant instance by navigating to **Settings** → **Add-ons** → **Add-on Store**, clicking the menu in the top right, selecting **Repositories**, and adding:
   ```
   https://github.com/ThinkerVerse/ha-media-services-bundle
   ```

2. Find the "Media Services Bundle" add-on in the store and click **Install**.

3. Configure the add-on:
   - Set your VPN provider details (currently configured for NordVPN)
   - Set your timezone

4. Start the add-on.

## Configuration

These options are available in the add-on configuration:

| Option | Description |
|--------|-------------|
| `vpn_service_provider` | VPN service provider (e.g., "nordvpn") |
| `vpn_type` | VPN type: "openvpn" or "wireguard" |
| `vpn_username` | Your VPN username |
| `vpn_password` | Your VPN password |
| `vpn_server_countries` | Country for VPN server selection |
| `timezone` | Your local timezone |

## Access

After starting the add-on, you can access the various services at:

- **Radarr**: `http://your-home-assistant:7878`
- **Sonarr**: `http://your-home-assistant:8989`
- **Prowlarr**: `http://your-home-assistant:9696`
- **Bazarr**: `http://your-home-assistant:6767`
- **Lidarr**: `http://your-home-assistant:8686`
- **Readarr**: `http://your-home-assistant:8787`
- **qBittorrent**: `http://your-home-assistant:8080`
- **Jellyfin**: `http://your-home-assistant:8096`

## Data Storage

All service data is stored in persistent locations:

- `/data/radarr/`: Radarr configuration and movies
- `/data/sonarr/`: Sonarr configuration and TV series
- `/data/prowlarr/`: Prowlarr configuration
- `/data/bazarr/`: Bazarr configuration
- `/data/lidarr/`: Lidarr configuration and music
- `/data/readarr/`: Readarr configuration and books
- `/data/qbittorrent/`: qBittorrent configuration and downloads
- `/data/jellyfin/`: Jellyfin configuration

## Notes

- The default login for qBittorrent is `admin`/`adminadmin`
- Jellyfin will require initial setup when first accessed
- All services except Jellyfin route through the VPN
- You may need to adjust firewall settings if you're accessing these services from outside your local network

## Support

For issues or feature requests, please open an issue on the [GitHub repository](https://github.com/ThinkerVerse/ha-media-services-bundle/issues).

## License

This project is licensed under the MIT License.