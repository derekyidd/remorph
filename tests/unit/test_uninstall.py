from datetime import timedelta
from unittest.mock import create_autospec

import pytest
from databricks.labs.blueprint.installation import Installation
from databricks.labs.blueprint.tui import MockPrompts
from databricks.sdk import WorkspaceClient
from databricks.sdk.errors import NotFound

from databricks.labs.remorph.__about__ import __version__
from databricks.labs.remorph.config import MorphConfig
from databricks.labs.remorph.install import WorkspaceInstallation


@pytest.fixture
def ws():
    ws = create_autospec(WorkspaceClient)

    ws.product = "remorph"
    ws.product_version = __version__

    return ws


def test_uninstall(ws):
    prompts = MockPrompts(
        {
            r"Do you want to uninstall remorph.*": "yes",
        }
    )
    installation = create_autospec(Installation)
    config = MorphConfig(source="snowflake", sdk_config=None, skip_validation=True, catalog_name="remorph_test")
    timeout = timedelta(seconds=1)

    installer = WorkspaceInstallation(config, installation, ws, prompts, timeout)
    installer.uninstall()


def test_uninstall_no_remorph_dir(ws):
    prompts = MockPrompts(
        {
            r"Do you want to uninstall remorph.*": "yes",
        }
    )
    installation = create_autospec(Installation)
    config = MorphConfig(source="snowflake", sdk_config=None, skip_validation=True, catalog_name="remorph_test")
    timeout = timedelta(seconds=1)

    installer = WorkspaceInstallation(config, installation, ws, prompts, timeout)

    installer._installation.files.side_effect = NotFound()
    installer.uninstall()


def test_uninstall_no(ws):
    prompts = MockPrompts(
        {
            r"Do you want to uninstall remorph.*": "no",
        }
    )
    installation = create_autospec(Installation)
    config = MorphConfig(source="snowflake", sdk_config=None, skip_validation=True, catalog_name="remorph_test")
    timeout = timedelta(seconds=1)

    installer = WorkspaceInstallation(config, installation, ws, prompts, timeout)

    installer.uninstall()