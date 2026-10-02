import random
import sys
import pathlib

def main():
    n = int(sys.argv[1]) if len(sys.argv) > 1 else 32
    random.seed(42)
    script_dir = pathlib.Path(__file__).resolve().parent
    out_path = script_dir.parent / "sim" / "input_data.txt"
    with open(out_path, "w") as f:
        for _ in range(n):
            value = random.randint(0x0000, 0xFFFF)
            f.write(f"{value:04X}\n")
    print(f"Wrote {n} 16-bit to {out_path}")

if __name__ == "__main__":
    main()
