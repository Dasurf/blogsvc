from fastapi import APIRouter

router = APIRouter(prefix="/tool", tags=["tools"])


@router.get(path="")
def tool_check() -> dict[str, str]:
    return {"status": "ok", "service": "blogsvc", "tool": "example tool"}  

#check further
@router.get(path="/path")
def tool_check() -> dict[str, str]:
    return {"status": "ok", "service": "blogsvc", "tool": "example tool", "path": "/path"}  