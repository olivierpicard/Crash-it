package com.olivierpicard.crachit.Graphics;

/**
 * Created by olivierpicard on 02/04/2018.
 */

public class GSize {
    public float height, width;

    private GSize() {}

    public GSize(float w, float h) {
        this.width = w;
        this.height = h;
    }

    @Override
    public String toString() {
        return "(w: " + this.width + ", h: " + this.height + ")";
    }
}
