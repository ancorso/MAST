module AdversarialDriving
    using POMDPs
    using AutomotiveSimulator
    using AutomotiveVisualization
    using Distributions
    using Parameters
    using Random
    using Reel

    # TIDM model exports
    export  PEDESTRIAN_DEF, Noise, NoisyState, NoisyPedState, BlinkerState,
            update_veh_state, noisy_scene, noisy_entity, blinker, goals, noise,
            BlinkerVehicle, NoisyPedestrian, Disturbance, BlinkerVehicleControl,
            PedestrianControl, AdversarialPedestrian, TIDM, lane_belief, laneid,
            can_have_goal, any_collides, ego_collides, end_of_road

    # T-Intersection roadway exports
    export  roadway_lane,
            road_with_crosswalk, Crosswalk, DEFAULT_CROSSWALK_LANE,
            ped_roadway, crosswalk, ped_yields_way, ped_intersection_enter_loc, ped_intersection_exit_loc, ped_goals, ped_should_blink,
            T_intersection, Tint_goal_label, Tint_signal_right,
            Tint_roadway, Tint_yields_way, Tint_intersection_enter_loc, Tint_intersection_exit_loc, Tint_goals, Tint_should_blink,
            Tint_TIDM_template, ped_TIDM_template

    # MDP
    export Agent, BlinkerVehicleAgent, NoisyPedestrianAgent, id,
           AdversarialDrivingMDP, action_probability, step_scene,
           agents, adversaries, model, sut, sutid, update_adversary!

    # states
    export PEDESTRIAN_OBS, NoisyPedestrian_to_vec, vec_to_NoisyPedestrian_fn,
           BLINKERVEHICLE_OBS, BLINKERVEHICLE_EXPANDED_OBS, BlinkerVehicle_to_vec, vec_to_BlinkerVehicle, BlinkerVehicle_to_expanded_vec

    #actions
    export BV_ACTIONS, BV_ACTION_PROB, construct_discrete_actions

    #helpers
    export  decompose_scene, up_left, left_straight, left_turnright, right_straight,
            right_turnleft, random_IDM, ez_Tint_vehicle, ez_ped_vehicle, ez_pedestrian,
            scenes_to_gif

    include("driving_models.jl")
    include("roadways.jl")
    include("mdp.jl")
    include("states.jl")
    include("actions.jl")
    include("helpers.jl")
end

