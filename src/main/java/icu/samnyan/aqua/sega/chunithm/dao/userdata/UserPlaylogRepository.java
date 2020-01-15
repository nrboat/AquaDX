package icu.samnyan.aqua.sega.chunithm.dao.userdata;

import icu.samnyan.aqua.sega.chunithm.model.userdata.UserPlaylog;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author samnyan (privateamusement@protonmail.com)
 */
@Repository
public interface UserPlaylogRepository extends JpaRepository<UserPlaylog, Long> {
    List<UserPlaylog> findByUser_Card_ExtIdAndLevelNot(long extId, int levelNot, Pageable page);

    List<UserPlaylog> findByUser_Card_ExtId(long parseLong, Pageable page);
}
