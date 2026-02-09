package com.rem.registry.exception;

import java.util.List;

public record ApiErrorResponse(
        String type,
        String message,
        List<FieldErrorResponse> errors,
        String correlationId) {

    public static ApiErrorResponse validation(String correlationId, List<FieldErrorResponse> errors) {
        return new ApiErrorResponse("validation_error", "Validation failed", errors, correlationId);
    }

    public static ApiErrorResponse serverError(String correlationId) {
        return new ApiErrorResponse("server_error", "Unexpected error", null, correlationId);
    }
}
