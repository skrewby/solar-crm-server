-- ############################################################################
-- # assigned_roles
-- ############################################################################
ALTER TABLE assigned_roles
    ADD CONSTRAINT role_fk FOREIGN KEY (role_id) REFERENCES roles (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE assigned_roles
    ADD CONSTRAINT user_fk FOREIGN KEY (user_id) REFERENCES users (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

-- ############################################################################
-- # stock_item
-- ############################################################################
ALTER TABLE stock_item
    ADD CONSTRAINT stock_type_fk FOREIGN KEY (stock_type) REFERENCES stock_types (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE stock_item
    ADD CONSTRAINT datasheet_fk FOREIGN KEY (datasheet) REFERENCES files (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE stock_item
    ADD CONSTRAINT warranty_fk FOREIGN KEY (warranty) REFERENCES files (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

-- ############################################################################
-- # customer_logs
-- ############################################################################
ALTER TABLE customer_logs
    ADD CONSTRAINT customer_fk FOREIGN KEY (customer_id) REFERENCES customers (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

-- ############################################################################
-- # services
-- ############################################################################
ALTER TABLE services
    ADD CONSTRAINT customer_fk FOREIGN KEY (customer_id) REFERENCES customers (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE services
    ADD CONSTRAINT status_fk FOREIGN KEY (status_id) REFERENCES service_status (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE services
    ADD CONSTRAINT user_fk FOREIGN KEY (created_by) REFERENCES users (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE services
    ADD CONSTRAINT state_fk FOREIGN KEY (state) REFERENCES states (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

-- ############################################################################
-- # service_items
-- ############################################################################
ALTER TABLE service_items
    ADD CONSTRAINT service_fk FOREIGN KEY (service_id) REFERENCES services (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

-- ############################################################################
-- # service_logs
-- ############################################################################
ALTER TABLE service_logs
    ADD CONSTRAINT service_fk FOREIGN KEY (service_id) REFERENCES services (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE service_logs
    ADD CONSTRAINT status_fk FOREIGN KEY (service_status_id) REFERENCES service_status (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

-- ############################################################################
-- # service_files
-- ############################################################################
ALTER TABLE service_files
    ADD CONSTRAINT service_fk FOREIGN KEY (service_id) REFERENCES services (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE service_files
    ADD CONSTRAINT file_fk FOREIGN KEY (file_id) REFERENCES files (id)
        ON UPDATE CASCADE ON DELETE CASCADE;

-- ############################################################################
-- # leads
-- ############################################################################
ALTER TABLE leads
    ADD CONSTRAINT source_fk FOREIGN KEY (source_id) REFERENCES lead_sources (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT phase_fk FOREIGN KEY (phase_id) REFERENCES phases (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT story_fk FOREIGN KEY (story_id) REFERENCES stories (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT roof_type_fk FOREIGN KEY (roof_type_id) REFERENCES roof_types (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT roof_pitch_fk FOREIGN KEY (roof_pitch_id) REFERENCES roof_pitch (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT existing_system_fk FOREIGN KEY (existing_system_id) REFERENCES existing_system (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT status_fk FOREIGN KEY (status_id) REFERENCES lead_status (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT created_by_fk FOREIGN KEY (created_by) REFERENCES users (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT sales_id_fk FOREIGN KEY (sales_id) REFERENCES users (id)
    ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE leads
    ADD CONSTRAINT panel_design_fk FOREIGN KEY (panel_design) REFERENCES files (id)
    ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE leads
    ADD CONSTRAINT rebate_attachment_fk FOREIGN KEY (rebate_attachment) REFERENCES files (id)
    ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE leads
    ADD CONSTRAINT finance_attachment_fk FOREIGN KEY (finance_attachment) REFERENCES files (id)
    ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE leads
    ADD CONSTRAINT state_fk FOREIGN KEY (state) REFERENCES states (id)
        ON UPDATE CASCADE ON DELETE CASCADE;