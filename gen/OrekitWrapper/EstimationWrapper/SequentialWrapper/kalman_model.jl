function KalmanModel(arg0::List, arg1::List, arg2::ParameterDriversList)
    return KalmanModel((List, List, ParameterDriversList), arg0, arg1, arg2)
end

function finalize_estimation(obj::KalmanModel, arg0::ObservedMeasurement, arg1::ProcessEstimate)
    return jcall(obj, "finalizeEstimation", void, (ObservedMeasurement, ProcessEstimate), arg0, arg1)
end

function get_corrected_measurement(obj::KalmanModel)
    return jcall(obj, "getCorrectedMeasurement", EstimatedMeasurement, ())
end

function get_corrected_spacecraft_states(obj::KalmanModel)
    return jcall(obj, "getCorrectedSpacecraftStates", Vector{SpacecraftState}, ())
end

function get_current_date(obj::KalmanModel)
    return jcall(obj, "getCurrentDate", AbsoluteDate, ())
end

function get_current_measurement_number(obj::KalmanModel)
    return jcall(obj, "getCurrentMeasurementNumber", jint, ())
end

function get_estimate(obj::KalmanModel)
    return jcall(obj, "getEstimate", ProcessEstimate, ())
end

function get_estimated_measurements_parameters(obj::KalmanModel)
    return jcall(obj, "getEstimatedMeasurementsParameters", ParameterDriversList, ())
end

function get_estimated_orbital_parameters(obj::KalmanModel)
    return jcall(obj, "getEstimatedOrbitalParameters", ParameterDriversList, ())
end

function get_estimated_propagation_parameters(obj::KalmanModel)
    return jcall(obj, "getEstimatedPropagationParameters", ParameterDriversList, ())
end

function get_estimated_propagators(obj::KalmanModel)
    return jcall(obj, "getEstimatedPropagators", Vector{NumericalPropagator}, ())
end

function get_evolution(obj::KalmanModel, arg0::jdouble, arg1::RealVector, arg2::MeasurementDecorator)
    return jcall(obj, "getEvolution", NonLinearEvolution, (jdouble, RealVector, MeasurementDecorator), arg0, arg1, arg2)
end

function get_innovation(obj::KalmanModel, arg0::MeasurementDecorator, arg1::NonLinearEvolution, arg2::RealMatrix)
    return jcall(obj, "getInnovation", RealVector, (MeasurementDecorator, NonLinearEvolution, RealMatrix), arg0, arg1, arg2)
end

function get_physical_estimated_covariance_matrix(obj::KalmanModel)
    return jcall(obj, "getPhysicalEstimatedCovarianceMatrix", RealMatrix, ())
end

function get_physical_estimated_state(obj::KalmanModel)
    return jcall(obj, "getPhysicalEstimatedState", RealVector, ())
end

function get_physical_innovation_covariance_matrix(obj::KalmanModel)
    return jcall(obj, "getPhysicalInnovationCovarianceMatrix", RealMatrix, ())
end

function get_physical_kalman_gain(obj::KalmanModel)
    return jcall(obj, "getPhysicalKalmanGain", RealMatrix, ())
end

function get_physical_measurement_jacobian(obj::KalmanModel)
    return jcall(obj, "getPhysicalMeasurementJacobian", RealMatrix, ())
end

function get_physical_state_transition_matrix(obj::KalmanModel)
    return jcall(obj, "getPhysicalStateTransitionMatrix", RealMatrix, ())
end

function get_predicted_measurement(obj::KalmanModel)
    return jcall(obj, "getPredictedMeasurement", EstimatedMeasurement, ())
end

function get_predicted_spacecraft_states(obj::KalmanModel)
    return jcall(obj, "getPredictedSpacecraftStates", Vector{SpacecraftState}, ())
end

