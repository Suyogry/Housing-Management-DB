-- Export Application: Housing Management System
-- Application ID: 100
-- Created in Oracle APEX
-- Export Date: 2024-11-19

BEGIN
    -- Install Application Metadata
    wwv_flow_api.create_application(
        p_id                 => 100,
        p_name               => 'Housing Management System',
        p_alias              => 'HMS_APP',
        p_application_owner  => 'Admin',
        p_build_status       => 'RUN_AND_BUILD',
        p_protect_apex       => 'N'
    );

    -- Import Page 1: Dashboard
    wwv_flow_api.create_page(
        p_flow_id            => 100,
        p_id                 => 1,
        p_name               => 'Dashboard',
        p_alias              => 'DASHBOARD'
    );

    -- Import Page 2: Student Management
    wwv_flow_api.create_page(
        p_flow_id            => 100,
        p_id                 => 2,
        p_name               => 'Student Management',
        p_alias              => 'STUDENT_MGMT'
    );

    -- Import Page 3: Lease Management
    wwv_flow_api.create_page(
        p_flow_id            => 100,
        p_id                 => 3,
        p_name               => 'Lease Management',
        p_alias              => 'LEASE_MGMT'
    );

    -- Import Page 4: Maintenance Tracking
    wwv_flow_api.create_page(
        p_flow_id            => 100,
        p_id                 => 4,
        p_name               => 'Maintenance Tracking',
        p_alias              => 'MAINT_TRACK'
    );

    -- Import Supporting Objects
    wwv_flow_api.create_supporting_object(
        p_flow_id            => 100,
        p_id                 => 1,
        p_name               => 'Tables',
        p_script             => 'CREATE TABLE ...'
    );

    wwv_flow_api.create_supporting_object(
        p_flow_id            => 100,
        p_id                 => 2,
        p_name               => 'Sample Data',
        p_script             => 'INSERT INTO ...'
    );
END;
/
