/* 
 * PRIMARY KEY (component_id, review_id) ensures uniqueness per component-review pair.
 * FOREIGN KEY (component_id) links each rating to a specific review component.
 * FOREIGN KEY (review_id) links each rating to a specific user review.
 * ON DELETE CASCADE ensures cleanup if related records are deleted.
 */
CREATE TABLE component_rating (
    component_id INT NOT NULL,
    review_id INT NOT NULL,
    rating INT NOT NULL,
    PRIMARY KEY (component_id, review_id),
    FOREIGN KEY (component_id) REFERENCES review_component(id) ON DELETE CASCADE,
    FOREIGN KEY (review_id) REFERENCES user_review(id) ON DELETE CASCADE
);