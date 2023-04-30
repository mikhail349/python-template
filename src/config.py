"""Module contains app settings."""
import os

from pydantic import BaseSettings

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
"""Project root."""


class Settings(BaseSettings):
    """Main app settings."""

    class Config(BaseSettings.Config):
        """Meta settings."""

        env_file = os.path.join(BASE_DIR, ".env")
