-- Copyright 2014-2015 The Howl Developers
-- License: MIT (see LICENSE.md at the top-level directory of the distribution)
core = require 'ljglibs.core'

require 'ljglibs.cdefs.cairo'
ffi = require 'ffi'
C, ffi_string, ffi_gc, ffi_new = ffi.C, ffi.string, ffi.gc, ffi.new

core.auto_loading 'cairo', {
  constants: {
    prefix: 'CAIRO_'

    -- cairo_content_t;
    'CONTENT_COLOR',
    'CONTENT_ALPHA',
    'CONTENT_COLOR_ALPHA',

    -- cairo_antialias_t;
    'ANTIALIAS_DEFAULT',

    'ANTIALIAS_NONE',
    'ANTIALIAS_GRAY',
    'ANTIALIAS_SUBPIXEL',

    'ANTIALIAS_FAST',
    'ANTIALIAS_GOOD',
    'ANTIALIAS_BEST'

    -- cairo_fill_rule_t;
    'FILL_RULE_WINDING',
    'FILL_RULE_EVEN_ODD'

    -- cairo_line_cap_t;
    'LINE_CAP_BUTT',
    'LINE_CAP_ROUND',
    'LINE_CAP_SQUARE'

    -- cairo_line_join_t;
    'LINE_JOIN_MITER',
    'LINE_JOIN_ROUND',
    'LINE_JOIN_BEVEL'

    -- cairo_operator_t;
    'OPERATOR_CLEAR',

    'OPERATOR_SOURCE',
    'OPERATOR_OVER',
    'OPERATOR_IN',
    'OPERATOR_OUT',
    'OPERATOR_ATOP',

    'OPERATOR_DEST',
    'OPERATOR_DEST_OVER',
    'OPERATOR_DEST_IN',
    'OPERATOR_DEST_OUT',
    'OPERATOR_DEST_ATOP',

    'OPERATOR_XOR',
    'OPERATOR_ADD',
    'OPERATOR_SATURATE',

    'OPERATOR_MULTIPLY',
    'OPERATOR_SCREEN',
    'OPERATOR_OVERLAY',
    'OPERATOR_DARKEN',
    'OPERATOR_LIGHTEN',
    'OPERATOR_COLOR_DODGE',
    'OPERATOR_COLOR_BURN',
    'OPERATOR_HARD_LIGHT',
    'OPERATOR_SOFT_LIGHT',
    'OPERATOR_DIFFERENCE',
    'OPERATOR_EXCLUSION',
    'OPERATOR_HSL_HUE',
    'OPERATOR_HSL_SATURATION',
    'OPERATOR_HSL_COLOR',
    'OPERATOR_HSL_LUMINOSITY'

    -- cairo_status_t
    'STATUS_SUCCESS',

    'STATUS_NO_MEMORY',
    'STATUS_INVALID_RESTORE',
    'STATUS_INVALID_POP_GROUP',
    'STATUS_NO_CURRENT_POINT',
    'STATUS_INVALID_MATRIX',
    'STATUS_INVALID_STATUS',
    'STATUS_NULL_POINTER',
    'STATUS_INVALID_STRING',
    'STATUS_INVALID_PATH_DATA',
    'STATUS_READ_ERROR',
    'STATUS_WRITE_ERROR',
    'STATUS_SURFACE_FINISHED',
    'STATUS_SURFACE_TYPE_MISMATCH',
    'STATUS_PATTERN_TYPE_MISMATCH',
    'STATUS_INVALID_CONTENT',
    'STATUS_INVALID_FORMAT',
    'STATUS_INVALID_VISUAL',
    'STATUS_FILE_NOT_FOUND',
    'STATUS_INVALID_DASH',
    'STATUS_INVALID_DSC_COMMENT',
    'STATUS_INVALID_INDEX',
    'STATUS_CLIP_NOT_REPRESENTABLE',
    'STATUS_TEMP_FILE_ERROR',
    'STATUS_INVALID_STRIDE',
    'STATUS_FONT_TYPE_MISMATCH',
    'STATUS_USER_FONT_IMMUTABLE',
    'STATUS_USER_FONT_ERROR',
    'STATUS_NEGATIVE_COUNT',
    'STATUS_INVALID_CLUSTERS',
    'STATUS_INVALID_SLANT',
    'STATUS_INVALID_WEIGHT',
    'STATUS_INVALID_SIZE',
    'STATUS_USER_FONT_NOT_IMPLEMENTED',
    'STATUS_DEVICE_TYPE_MISMATCH',
    'STATUS_DEVICE_ERROR',
    'STATUS_INVALID_MESH_CONSTRUCTION',
    'STATUS_DEVICE_FINISHED',
    'STATUS_JBIG2_GLOBAL_MISSING',

    'STATUS_LAST_STATUS'

    -- cairo_extend_t
    'EXTEND_NONE',
    'EXTEND_REPEAT',
    'EXTEND_REFLECT',
    'EXTEND_PAD'
  }
}
