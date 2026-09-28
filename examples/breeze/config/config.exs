import Config

# Keep the default cache limit without requiring OTP's optional :os_mon application.
config :back_breeze, render_cache_max_memory_bytes: 256 * 1024 * 1024
