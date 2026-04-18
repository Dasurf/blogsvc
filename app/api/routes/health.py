# from __future__ import annotations

# from typing import Dict

from fastapi import APIRouter

router = APIRouter(prefix="/health", tags=["health"])


@router.get(path="")
def health_check() -> dict[str, str]:
    return {"status": "ok", "service": "blogsvc"}
